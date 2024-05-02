import 'package:auto_size_text/auto_size_text.dart';
import 'package:finsight/collections/constants.dart';
import 'package:finsight/collections/icons.dart';
import 'package:finsight/components/charts/themed_bar_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

typedef OffererAndAvg<T> = ({T offerer, T average});

class OfferScreenApyCardSection extends StatelessWidget {
  final String offerer;
  final OffererAndAvg<double> yValues;
  final OffererAndAvg<double> yieldValues;
  final OffererAndAvg<String> tooltipLabels;
  final IconData headingIcon;

  const OfferScreenApyCardSection({
    super.key,
    required this.offerer,
    required this.yValues,
    required this.yieldValues,
    required this.tooltipLabels,
    this.headingIcon = AppIcons.bank,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData(:colorScheme, :textTheme, :dividerColor) =
        Theme.of(context);

    final subtitleStyle = textTheme.bodySmall?.copyWith(
      color: dividerColor,
    );
    final estimatedEarningText = AutoSizeText(
      "Earnings estimate",
      overflowReplacement: AutoSizeText(
        "Est. earn",
        maxLines: 1,
        style: subtitleStyle,
        minFontSize: 10,
        overflow: TextOverflow.ellipsis,
      ),
      maxLines: 1,
      minFontSize: 10,
      style: subtitleStyle,
    );
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTileTheme(
              dense: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              horizontalTitleGap: 10,
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceVariant,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(6),
                        child: Icon(headingIcon),
                      ),
                      title: const AutoSizeText(
                        "Average",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        minFontSize: 12,
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: estimatedEarningText),
                          const Gap(4),
                          AutoSizeText(
                            formatCurrency.format(yieldValues.average),
                            maxLines: 1,
                            minFontSize: 10,
                            style: subtitleStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.all(6),
                        child: Icon(headingIcon),
                      ),
                      title: AutoSizeText(
                        offerer,
                        maxLines: 1,
                        minFontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: estimatedEarningText),
                          const Gap(4),
                          Text(
                            formatCurrency.format(yieldValues.offerer),
                            style: subtitleStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(8),
            AspectRatio(
              aspectRatio: 25 / 9,
              child: ThemedBarChart(
                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                  return BarTooltipItem(
                    groupIndex == 0
                        ? tooltipLabels.average
                        : tooltipLabels.offerer,
                    textTheme.bodySmall!.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  );
                },
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barRods: [
                      BarChartRodData(
                        toY: yValues.average + .0001,
                        color: colorScheme.surfaceVariant,
                        width: 20,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(
                        toY: yValues.offerer + .0001,
                        color: colorScheme.primaryContainer,
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}
