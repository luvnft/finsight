import 'package:finsight/modules/home/rankings/credits/credits_item.dart';
import 'package:finsight/pages/home/rankings/expanded/credits.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:finsight/components/chip_selector/chip_selector.dart';
import 'package:finsight/components/chip_selector/selectable_chip.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/collections/icons.dart';
import 'package:finsight/modules/home/rankings/chart.dart';
import 'package:finsight/providers/supabase/credits/categories.dart';
import 'package:finsight/providers/supabase/credits/credits.dart';

class RankingsPageCreditTab extends HookConsumerWidget {
  const RankingsPageCreditTab({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final credits = ref.watch(creditProvider);
    final creditCategories = ref.watch(creditCategoriesProvider);
    final creditNotifier = ref.read(creditProvider.notifier);

    final chartValues = ref.watch(creditChartValues);

    final creditLength = credits.asData?.value.credits.length ?? 0;

    return CustomScrollView(
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
        SliverList.separated(
          separatorBuilder: (context, index) => const Gap(5),
          itemCount: creditLength > 2 ? 2 : creditLength,
          itemBuilder: (context, index) =>
              CreditsItem(credit: credits.asData!.value.credits[index]),
        ),
        const SliverGap(16),
        if (creditLength > 2)
          SliverToBoxAdapter(
            child: OutlinedButton.icon(
              icon: const Icon(AppIcons.eye),
              label: const Text("See all"),
              onPressed: () {
                context.pushNamed(CreditsExpandedPage.name);
              },
            ),
          ),
      ],
    );
  }
}
