import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:finsight/components/charts/themed_bar_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef OfferChartValue = ({
  double y,
  String tooltip,
  Color color,
  Color lightColor
});

class OfferScreenChartSection extends HookConsumerWidget {
  final List<OfferChartValue> values;
  const OfferScreenChartSection({
    super.key,
    required this.values,
  });

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme, :colorScheme, :brightness) = Theme.of(context);
    final windowType = getWindowType(context);
    final animation = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    useEffect(
      () {
        animation.forward();
        return null;
      },
      [animation, values],
    );

    return FadeTransition(
      opacity: Tween<double>(begin: 0, end: 1).animate(animation),
      child: AspectRatio(
        aspectRatio: windowType > AdaptiveWindowType.small ? 4 / 1 : 25 / 9,
        child: ThemedBarChart(
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            final value = values[groupIndex];
            return BarTooltipItem(
              value.tooltip,
              textTheme.bodySmall!.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.bold,
              ),
            );
          },
          barGroups: [
            if (values.isEmpty)
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: 0,
                    width: windowType > AdaptiveWindowType.small ? 20 : 12,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ],
              ),
            for (int i = 0; i < values.length; i++)
              BarChartGroupData(
                x: i + 1,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: values[i].y + .1,
                    width: windowType > AdaptiveWindowType.small ? 20 : 12,
                    color: brightness == Brightness.light
                        ? values[i].color
                        : values[i].lightColor,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
