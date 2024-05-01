import 'dart:async';

import 'package:finsight/modules/home/rankings/chart.dart';
import 'package:finsight/services/supabase/supabase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:finsight/collections/constants.dart';
import 'package:finsight/collections/supabase.dart';
import 'package:finsight/models/models.dart';

import 'package:finsight/utils/color.dart';
import 'package:finsight/utils/pagination.dart';

class DepositState extends PaginatedState {
  final Map<SupabaseDepositsCategory, List<SupabaseDeposit>> depositsMap;
  final SupabaseDepositsCategory category;

  DepositState({
    required this.depositsMap,
    required this.category,
    super.offset = 0,
    required super.hasMore,
  }) : super(limit: 10);

  List<SupabaseDeposit> get deposits => depositsMap[category] ?? [];

  DepositState copyWith({
    Map<SupabaseDepositsCategory, List<SupabaseDeposit>>? depositsMap,
    int? offset,
    SupabaseDepositsCategory? category,
    bool? hasMore,
  }) {
    return DepositState(
      category: category ?? this.category,
      depositsMap: depositsMap ?? this.depositsMap,
      offset: offset ?? this.offset,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class DepositNotifier extends PaginatedAsyncNotifier<DepositState> {
  DepositNotifier() : super();

  Future<List<SupabaseDeposit>> fetchDeposits({
    required int offset,
    required int limit,
    required SupabaseDepositsCategory category,
  }) async {
    final depositsQuery = supabase
        .from(SupabaseTables.deposit)
        .select("*")
        .eq('offerCategory', category.name)
        .order('offerAPY', ascending: false)
        .range(offset, offset + limit);

    final deposits = await depositsQuery.withConverter<List<SupabaseDeposit>>(
      (json) => json.map((el) => SupabaseDeposit.fromJson(el)).toList(),
    );

    return deposits;
  }

  @override
  FutureOr<DepositState> build() async {
    final deposits = await fetchDeposits(
      offset: 0,
      limit: 10,
      category: SupabaseDepositsCategory.checking,
    );

    return DepositState(
      depositsMap: {
        SupabaseDepositsCategory.checking: deposits,
      },
      category: SupabaseDepositsCategory.checking,
      offset: 0,
      hasMore: deposits.length >= 10,
    );
  }

  @override
  Future<void> fetchMore() async {
    if (state.value == null || !state.value!.hasMore) return;
    state = AsyncPaginating(state.value!);

    state = await AsyncValue.guard(() async {
      final deposits = await fetchDeposits(
        offset: state.value!.nextOffset,
        limit: state.value!.limit,
        category: state.value!.category,
      );

      return state.value!.copyWith(
        depositsMap: {
          ...state.value!.depositsMap,
          state.value!.category: [
            ...state.value!.depositsMap[state.value!.category]!,
            ...deposits,
          ],
        },
        offset: state.value!.nextOffset,
        hasMore: deposits.length >= state.value!.limit,
      );
    });
  }

  Future<void> setCategory(SupabaseDepositsCategory category) async {
    if (state.value == null || state.value!.category == category) return;

    if (state.value!.depositsMap[category]?.isNotEmpty == true) {
      state = AsyncData(state.value!.copyWith(category: category));
    } else {
      state = AsyncData(state.value!.copyWith(category: category));
      state = const AsyncValue.loading();

      state = await AsyncValue.guard(() async {
        final credits = await fetchDeposits(
          offset: 0,
          limit: 10,
          category: category,
        );

        return DepositState(
          depositsMap: {
            ...state.value!.depositsMap,
            category: credits,
          },
          offset: 10,
          category: category,
          hasMore: credits.length >= state.value!.limit,
        );
      });
    }
  }
}

final depositProvider = AsyncNotifierProvider<DepositNotifier, DepositState>(
  () => DepositNotifier(),
);

final depositChartValues = Provider<List<OfferChartValue>>((ref) {
  final deposits = ref.watch(depositProvider);

  final values = deposits.value?.deposits ?? <SupabaseDeposit>[];

  return values.map((deposit) {
    return (
      y: deposit.offerAPY ?? 0,
      tooltip:
          "${formatPercentageWithDecimal.format((deposit.offerAPY ?? 0) / 100)}"
          " APY\n${deposit.offerName}",
      // " APY\n${deposit.offerName.split("- ").first.trim()}",
      color: HexColor(deposit.imageDarkColor),
      lightColor: HexColor(deposit.imageLightColor),
    );
  }).toList();
});
