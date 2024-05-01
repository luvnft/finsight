import 'package:finsight/collections/icons.dart';
import 'package:finsight/pages/home/rankings/expanded/deposit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:finsight/components/chip_selector/chip_selector.dart';
import 'package:finsight/components/chip_selector/selectable_chip.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/rankings/chart.dart';
import 'package:finsight/modules/home/rankings/deposit/deposit_item.dart';
import 'package:finsight/providers/supabase/deposit/categories.dart';
import 'package:finsight/providers/supabase/deposit/deposit.dart';

class RankingsPageDepositTab extends HookConsumerWidget {
  const RankingsPageDepositTab({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final deposits = ref.watch(depositProvider);
    final depositCategories = ref.watch(depositCategoriesProvider);
    final depositNotifier = ref.read(depositProvider.notifier);

    final chartValues = ref.watch(depositChartValues);

    final depositLength = deposits.asData?.value.deposits.length ?? 0;

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
        SliverList.separated(
          separatorBuilder: (context, index) => const Gap(5),
          itemCount: depositLength > 2 ? 2 : depositLength,
          itemBuilder: (context, index) {
            final deposit = deposits.asData!.value.deposits[index];

            return DepositItem(deposit: deposit);
          },
        ),
        const SliverGap(16),
        if (depositLength > 2)
          SliverToBoxAdapter(
            child: OutlinedButton.icon(
              icon: const Icon(AppIcons.eye),
              label: const Text("See all"),
              onPressed: () {
                context.pushNamed(DepositExpandedPage.name);
              },
            ),
          )
      ],
    );
  }
}
