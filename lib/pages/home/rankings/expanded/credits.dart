import 'package:finsight/components/chip_selector/chip_selector.dart';
import 'package:finsight/components/chip_selector/selectable_chip.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/rankings/chart.dart';
import 'package:finsight/modules/home/rankings/credits/credits_item.dart';
import 'package:finsight/providers/supabase/credits/categories.dart';
import 'package:finsight/providers/supabase/credits/credits.dart';
import 'package:finsight/utils/pagination.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class CreditsExpandedPage extends HookConsumerWidget {
  static const name = 'CreditsExpandedPage';

  const CreditsExpandedPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final credits = ref.watch(creditProvider);
    final creditCategories = ref.watch(creditCategoriesProvider);
    final creditNotifier = ref.read(creditProvider.notifier);

    final chartValues = ref.watch(creditChartValues);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Credits offers"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            const SliverGap(16),
            SliverToBoxAdapter(
              child: OfferScreenChartSection(values: chartValues),
            ),
            const SliverGap(16),
            SliverToBoxAdapter(
              child: switch (creditCategories) {
                AsyncData(:final value) => ChipSelector<SupabaseCreditCategory>(
                    value: credits.asData?.value.category ??
                        value.firstOrNull ??
                        SupabaseCreditCategory.best,
                    onChanged: (value) {
                      creditNotifier.setCategory(value);
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
              hasError: credits.hasError,
              hasReachedMax: credits.asData?.value.hasMore == false,
              isLoading: credits.isLoadingNextPage || credits.isLoading,
              separatorBuilder: (context, index) => const Gap(16),
              onFetchData: () {
                creditNotifier.fetchMore();
              },
              itemCount: credits.asData?.value.credits.length ?? 0,
              itemBuilder: (context, index) =>
                  CreditsItem(credit: credits.asData!.value.credits[index]),
            ),
          ],
        ),
      ),
    );
  }
}
