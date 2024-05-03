import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:finsight/collections/constants.dart';
import 'package:finsight/collections/icons.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/rankings/offer/apy_card.dart';
import 'package:finsight/providers/supabase/deposit/deposit.dart';
import 'package:finsight/providers/supabase/deposit/deposit_avg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';

final selectedDepositOfferIndex = StateProvider<int>((ref) => 0);

class InsightPageDepositSection extends HookConsumerWidget {
  const InsightPageDepositSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;

    final depositsQuery = ref.watch(depositProvider);
    final deposits = useState(
      depositsQuery.asData?.value.depositsMap.values.expand((el) => el).toSet(),
    );
    final depositsNotifier = ref.watch(depositProvider.notifier);

    final controller = useMemoized(() => CarouselController(), []);

    useEffect(() {
      if (depositsQuery.asData?.value.depositsMap.values == null) {
        return null;
      }
      deposits.value = depositsQuery.asData?.value.depositsMap.values
          .expand((el) => el)
          .toSet();
      return null;
    }, [
      depositsQuery.asData?.value.depositsMap.values,
    ]);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, ref, child) {
              final depositIndex = ref.watch(selectedDepositOfferIndex);
              final deposit = deposits.value?.elementAt(depositIndex);

              return Flexible(
                child: AutoSizeText(
                  deposit?.bankName ?? "",
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
                pageViewKey: const PageStorageKey('deposit'),
                enableInfiniteScroll: false,
                viewportFraction: .95,
                onPageChanged: (value, reason) async {
                  if (value != 0 || ref.read(selectedDepositOfferIndex) == 1) {
                    ref.read(selectedDepositOfferIndex.notifier).state = value;
                  }

                  final isLastCategory = depositsQuery.asData?.value.category ==
                      SupabaseDepositsCategory.values.last;
                  final hasMore = depositsQuery.asData?.value.hasMore == true;
                  final isLastDeposit = deposits.value?.length == value + 1;

                  switch ((isLastDeposit, hasMore, isLastCategory)) {
                    case (true, true, _):
                      await depositsNotifier.fetchMore();
                      break;
                    case (true, false, false):
                      {
                        final nextCategory =
                            SupabaseDepositsCategory.values.elementAt(
                          depositsQuery.asData!.value.category.index + 1,
                        );
                        await depositsNotifier.setCategory(nextCategory);
                      }
                      break;
                    default:
                      break;
                  }
                },
              ),
              itemCount: deposits.value?.length ?? 0,
              itemBuilder: (context, index, pageViewIndex) =>
                  HookBuilder(builder: (context) {
                final deposit = deposits.value!.elementAt(index);
                final depositAvgApy = ref.watch(depositAvgApyProvider);
                final depositAvg = useMemoized(
                  () => depositAvgApy.asData?.value.firstWhere(
                      (el) => el.offerCategory == deposit.offerCategory),
                  [depositAvgApy.asData?.value, deposit.offerCategory],
                );

                return OfferScreenApyCardSection(
                  offerer: deposit.bankName,
                  yValues: (
                    average: depositAvg?.avgAPY ?? 0,
                    offerer: deposit.offerAPY?.toDouble() ?? 0,
                  ),
                  yieldValues: (
                    average: depositAvg?.avgEstimatedEarning ?? 0,
                    offerer: deposit.estimatedEarning.toDouble(),
                  ),
                  tooltipLabels: (
                    average:
                        '${formatPercentageWithDecimal.format((depositAvg?.avgAPY ?? 0) / 100)}\n'
                        'APY',
                    offerer:
                        '${formatPercentageWithDecimal.format((deposit.offerAPY ?? 0) / 100)}\n'
                        'APY',
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
