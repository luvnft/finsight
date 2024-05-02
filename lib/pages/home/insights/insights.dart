import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/insights/chat/chat.dart';
import 'package:finsight/modules/home/insights/credit.dart';
import 'package:finsight/modules/home/insights/deposit.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InsightsPage extends HookConsumerWidget {
  static const name = "InsightsPage";
  const InsightsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme) = Theme.of(context);
    final info = ref.watch(infoProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: switch (info.bankAccounts!) {
                BankAccounts.asset => const InsightPageDepositSection(),
                BankAccounts.liability => const InsightPageCreditsSection(),
              },
            ),
            const Gap(16),
            Text(" Insights", style: textTheme.titleLarge),
            const Gap(16),
            const Expanded(child: InsightPageChatSection()),
          ],
        ),
      ),
    );
  }
}
