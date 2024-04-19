import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:finsight/providers/prompts/alerts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/get.dart';

class AIPage extends HookConsumerWidget {
  static const name = "AIPage";
  final String csv;
  const AIPage({super.key, required this.csv});

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;
    final alerts = ref.watch(alertsPromptProvider(csv));

    final gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: switch (getWindowType(context)) {
        AdaptiveWindowType.small => 3,
        AdaptiveWindowType.medium => 4,
        AdaptiveWindowType.large => 5,
        AdaptiveWindowType.xlarge => 6,
        _ => 1
      },
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 1,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insight"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: switch (alerts) {
          AsyncData(:final value) => CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Text(
                    "Alerts",
                    style: textTheme.titleLarge,
                  ),
                ),
                SliverGrid.builder(
                  gridDelegate: gridDelegate,
                  itemCount: value.alerts.length,
                  itemBuilder: (context, index) {
                    final alert = value.alerts[index];

                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  SymbolsGet.get(
                                    alert.materialSymbolName,
                                    SymbolStyle.rounded,
                                  ),
                                ),
                                const Gap(8),
                                Flexible(child: Text(alert.title)),
                                const Spacer(),
                                Text(alert.level.toString()),
                              ],
                            ),
                            const Gap(8),
                            Text(alert.description),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SliverGap(8),
                SliverToBoxAdapter(
                  child: Text(
                    "Suggestions",
                    style: textTheme.titleLarge,
                  ),
                ),
                SliverGrid.builder(
                  gridDelegate: gridDelegate,
                  itemCount: value.recommendations.length,
                  itemBuilder: (context, index) {
                    final recommendation = value.recommendations[index];

                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              recommendation.title,
                              style: textTheme.titleMedium,
                            ),
                            const Gap(8),
                            Text(recommendation.description),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          AsyncError(:final error) => Text(error.toString()),
          _ => const Center(child: CircularProgressIndicator())
        },
      ),
    );
  }
}
