import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:finsight/components/chip_selector/chip_selector.dart';
import 'package:finsight/components/chip_selector/selectable_chip.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/rankings/chart.dart';
import 'package:finsight/modules/home/rankings/deposit/deposit_item.dart';
import 'package:finsight/providers/supabase/deposit/categories.dart';
import 'package:finsight/providers/supabase/deposit/deposit.dart';
import 'package:finsight/utils/pagination.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class RankingsPageDepositTab extends HookConsumerWidget {
  const RankingsPageDepositTab({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final deposits = ref.watch(depositProvider);
    final depositCategories = ref.watch(depositCategoriesProvider);
    final depositNotifier = ref.read(depositProvider.notifier);

    final chartValues = ref.watch(depositChartValues);

    return CustomScrollView(
      slivers: [
        const SliverGap(16),
        SliverToBoxAdapter(
          child: OfferScreenChartSection(values: chartValues),
        ),
        const SliverGap(16),
        SliverToBoxAdapter(
          child: switch (depositCategories) {
            AsyncData(:final value) => ChipSelector<SupabaseDepositsCategory>(
                value: deposits.asData?.value.category ??
                    value.firstOrNull ??
                    SupabaseDepositsCategory.checking,
                onChanged: (value) {
                  depositNotifier.setCategory(value);
                },
                options: {
                  for (var category in value)
                    category: SelectableChip(
                      icon: Icon(category.icon),
                      label: Text(category.label),
                    ),
                },
              ),
            _ => const SizedBox(),
          },
        ),
        const SliverGap(16),
        SliverInfiniteList(
          emptyBuilder: (context) {
            return const Center(
              child: Text("No deposits offers found"),
            );
          },
          errorBuilder: (context) => const Center(
            child: Text("An error occurred while getting deposit offers"),
          ),
          loadingBuilder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
          hasError: deposits.hasError,
          hasReachedMax: deposits.asData?.value.hasMore == false,
          isLoading: deposits.isLoadingNextPage || deposits.isLoading,
          separatorBuilder: (context, index) => const Gap(16),
          onFetchData: () {
            depositNotifier.fetchMore();
          },
          itemCount: deposits.asData?.value.deposits.length ?? 0,
          itemBuilder: (context, index) {
            final deposit = deposits.asData!.value.deposits[index];

            return DepositItem(deposit: deposit);
          },
        ),
      ],
    );
  }
}
