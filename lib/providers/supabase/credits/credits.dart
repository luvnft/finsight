import 'dart:async';

import 'package:finsight/collections/constants.dart';
import 'package:finsight/collections/supabase.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/rankings/chart.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:finsight/services/supabase/supabase.dart';
import 'package:finsight/utils/color.dart';
import 'package:finsight/utils/pagination.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreditState extends PaginatedState {
  final Map<SupabaseCreditCategory, List<SupabaseCredit>> creditsMap;
  final SupabaseCreditCategory category;

  CreditState({
    required this.creditsMap,
    required this.category,
    required super.offset,
    required super.hasMore,
  }) : super(limit: 10);

  List<SupabaseCredit> get credits => creditsMap[category] ?? [];

  CreditState copyWith({
    Map<SupabaseCreditCategory, List<SupabaseCredit>>? creditsMap,
    int? offset,
    SupabaseCreditCategory? category,
    bool? hasMore,
  }) {
    return CreditState(
      creditsMap: creditsMap ?? this.creditsMap,
      offset: offset ?? this.offset,
      category: category ?? this.category,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class CreditNotifier extends PaginatedAsyncNotifier<CreditState> {
  InfoState get info => ref.read(infoProvider);

  Future<List<SupabaseCredit>> fetch({
    required int offset,
    required int limit,
    required SupabaseCreditCategory category,
  }) async {
    final credits = await supabase
        .from(SupabaseTables.credit)
        .select("*")
        .eq('targetCustomer', info.accountType!.name)
        .contains('categories', [category.name])
        .order('estimatedEarning', ascending: false)
        .range(offset, offset + limit)
        .withConverter<List<SupabaseCredit>>(
          (json) =>
              json.map((credit) => SupabaseCredit.fromJson(credit)).toList(),
        );

    return credits;
  }

  @override
  FutureOr<CreditState> build() async {
    final credits = await fetch(
      offset: 0,
      limit: 10,
      category: SupabaseCreditCategory.best,
    );

    return CreditState(
      creditsMap: {SupabaseCreditCategory.best: credits},
      offset: 0,
      category: SupabaseCreditCategory.best,
      hasMore: credits.length >= 10,
    );
  }

  @override
  Future<void> fetchMore() async {
    if (state.value == null || !state.value!.hasMore) return;

    state = AsyncPaginating(state.value!);

    state = await AsyncValue.guard(() async {
      final credits = await fetch(
        offset: state.value!.nextOffset,
        limit: state.value!.limit,
        category: state.value!.category,
      );

      return state.value!.copyWith(
        creditsMap: {
          ...state.value!.creditsMap,
          state.value!.category: [
            ...state.value!.creditsMap[state.value!.category]!,
            ...credits,
          ],
        },
        offset: state.value!.nextOffset,
        hasMore: credits.length >= state.value!.limit,
      );
    });
  }

  Future<void> setCategory(SupabaseCreditCategory category) async {
    if (state.value == null || state.value!.category == category) return;

    if (state.value!.creditsMap[category]?.isNotEmpty == true) {
      state = AsyncData(state.value!.copyWith(category: category));
    } else {
      state = AsyncData(state.value!.copyWith(category: category));
      state = const AsyncValue.loading();

      state = await AsyncValue.guard(() async {
        final credits = await fetch(
          offset: 0,
          limit: 10,
          category: category,
        );

        return CreditState(
          creditsMap: {
            ...state.value!.creditsMap,
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

final creditProvider =
    AsyncNotifierProvider<CreditNotifier, CreditState>(() => CreditNotifier());

final creditChartValues = Provider<List<OfferChartValue>>((ref) {
  final credits = ref.watch(creditProvider);
  final values = credits.asData?.value.credits.map((credit) {
        return (
          y: credit.estimatedEarning,
          tooltip: "${formatCurrency.format(credit.estimatedEarning)}"
              " Rewards\n${credit.name}",
          color: HexColor(credit.imageDarkColor),
          lightColor: HexColor(credit.imageLightColor),
        );
      }).toList() ??
      [];

  return values;
});
