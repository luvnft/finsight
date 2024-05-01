import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ThemedBarChart extends StatelessWidget {
  final BarTooltipItem? Function(
    BarChartGroupData group,
    int groupIndex,
    BarChartRodData rod,
    int rodIndex,
  )? getTooltipItem;

  final List<BarChartGroupData> barGroups;
  final BarChartAlignment alignment;

  const ThemedBarChart({
    super.key,
    required this.barGroups,
    this.getTooltipItem,
    this.alignment = BarChartAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData(:colorScheme) = Theme.of(context);

    return BarChart(
      BarChartData(
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (group) {
              return colorScheme.onSurfaceVariant;
            },
            tooltipPadding: const EdgeInsets.all(4),
            getTooltipItem: getTooltipItem,
            fitInsideHorizontally: true,
            fitInsideVertically: true,
          ),
        ),
        alignment: alignment,
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        barGroups: barGroups,
      ),
    );
  }
}
