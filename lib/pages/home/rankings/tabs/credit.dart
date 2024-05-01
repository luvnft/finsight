import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:finsight/utils/pagination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:finsight/collections/constants.dart';
import 'package:finsight/components/chip_selector/chip_selector.dart';
import 'package:finsight/components/chip_selector/selectable_chip.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/collections/icons.dart';
import 'package:finsight/modules/home/rankings/chart.dart';
import 'package:finsight/providers/supabase/credits/categories.dart';
import 'package:finsight/providers/supabase/credits/credits.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class RankingsPageCreditTab extends HookConsumerWidget {
  const RankingsPageCreditTab({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme, :dividerColor) = Theme.of(context);

    final credits = ref.watch(creditProvider);
    final creditCategories = ref.watch(creditCategoriesProvider);
    final creditNotifier = ref.read(creditProvider.notifier);

    final chartValues = ref.watch(creditChartValues);

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
          itemBuilder: (context, index) => HookBuilder(builder: (context) {
            final credit = credits.asData!.value.credits[index];
            final imgBuffer = useMemoized(
              () => base64Decode(credit.imageExternalUrl),
              [credit.imageExternalUrl],
            );
            return ListTile(
              horizontalTitleGap: 12,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: dividerColor.withOpacity(.1)),
                borderRadius: BorderRadius.circular(8),
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(2.0),
                child: Image.memory(imgBuffer, width: 36),
              ),
              title: AutoSizeText(
                credit.name,
                maxLines: 2,
                minFontSize: 14,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  credit.introBonus,
                  style: textTheme.bodySmall?.copyWith(
                    color: dividerColor,
                  ),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    formatCurrency.format(credit.estimatedEarning),
                    style: textTheme.titleLarge,
                  ),
                  const Icon(AppIcons.angleRight),
                ],
              ),
              onTap: () {
                // context.pushNamed(
                //   CreditsScreen.id,
                //   pathParameters: {"id": credit.id},
                // );
              },
            );
          }),
        ),
      ],
    );
  }
}
