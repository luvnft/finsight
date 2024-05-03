import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:finsight/collections/constants.dart';
import 'package:finsight/collections/icons.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/rankings/offer/apy_card.dart';
import 'package:finsight/providers/supabase/credits/credits.dart';
import 'package:finsight/providers/supabase/credits/credits_avg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';

final selectedCreditsOfferIndex = StateProvider<int>((ref) => 0);

class InsightPageCreditsSection extends HookConsumerWidget {
  const InsightPageCreditsSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;

    final creditsQuery = ref.watch(creditProvider);
    final credits = useState(
      creditsQuery.asData?.value.creditsMap.values.expand((el) => el).toSet(),
    );
    final creditsNotifier = ref.watch(creditProvider.notifier);

    final controller = useMemoized(() => CarouselController(), []);

    useEffect(() {
      if (creditsQuery.asData?.value.creditsMap.values == null) {
        return null;
      }
      credits.value = creditsQuery.asData?.value.creditsMap.values
          .expand((el) => el)
          .toSet();
      return null;
    }, [
      creditsQuery.asData?.value.creditsMap.values,
    ]);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, ref, child) {
              final creditIndex = ref.watch(selectedCreditsOfferIndex);
              final credit = credits.value?.elementAt(creditIndex);

              return Flexible(
                child: AutoSizeText(
                  credit?.name ?? "",
                  style: textTheme.titleLarge,
                  maxLines: 1,
                ),
              );
            }),
          ],
        ),
        const Gap(5),
        Expanded(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: PointerDeviceKind.values.toSet(),
            ),
            child: CarouselSlider.builder(
              carouselController: controller,
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                autoPlay: false,
                pageSnapping: true,
                pageViewKey: const PageStorageKey('credit'),
                enableInfiniteScroll: false,
                viewportFraction: .9,
                onPageChanged: (value, reason) async {
                  if (value != 0 || ref.read(selectedCreditsOfferIndex) == 1) {
                    ref.read(selectedCreditsOfferIndex.notifier).state = value;
                  }

                  final isLastCategory = creditsQuery.asData?.value.category ==
                      SupabaseCreditCategory.values.last;
                  final hasMore = creditsQuery.asData?.value.hasMore == true;
                  final isLastCredit = credits.value?.length == value + 1;

                  switch ((isLastCredit, hasMore, isLastCategory)) {
                    case (true, true, _):
                      await creditsNotifier.fetchMore();
                      break;
                    case (true, false, false):
                      {
                        final nextCategory =
                            SupabaseCreditCategory.values.elementAt(
                          creditsQuery.asData!.value.category.index + 1,
                        );
                        await creditsNotifier.setCategory(nextCategory);
                      }
                      break;
                    default:
                      break;
                  }
                },
              ),
              itemCount: credits.value?.length ?? 0,
              itemBuilder: (context, index, pageViewIndex) =>
                  HookBuilder(builder: (context) {
                final credit = credits.value!.elementAt(index);
                final creditsEstEarnAvg = ref.watch(creditsEstEarnAvgProvider);
                final creditsAvg = useMemoized(
                  () =>
                      creditsEstEarnAvg.asData?.value
                          .firstWhere(
                            (el) => credit.categories.contains(el.category),
                          )
                          .avgEstimatedEarning ??
                      0,
                  [creditsEstEarnAvg, credit.categories],
                );

                return OfferScreenApyCardSection(
                  headingIcon: AppIcons.creditCard,
                  offerer: credit.name,
                  yValues: (
                    average: creditsAvg,
                    offerer: credit.estimatedEarning,
                  ),
                  yieldValues: (
                    average: creditsAvg,
                    offerer: credit.estimatedEarning,
                  ),
                  tooltipLabels: (
                    average: '${formatCurrency.format(creditsAvg)}\n'
                        'Earnings estimate',
                    offerer:
                        '${formatCurrency.format(credit.estimatedEarning)}\n'
                        'Earnings estimate',
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
