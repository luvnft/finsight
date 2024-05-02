import 'package:finsight/models/models.dart';
import 'package:finsight/pages/home/rankings/tabs/credit.dart';
import 'package:finsight/pages/home/rankings/tabs/deposit.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RankingsPage extends HookConsumerWidget {
  static const name = "RankingsPage";
  const RankingsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bankAccounts = ref.watch(infoProvider.select((s) => s.bankAccounts));

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                title: Text('Rankings'),
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                centerTitle: false,
                backgroundColor: Colors.transparent,
              ),
            ];
          },
          body: switch (bankAccounts!) {
            BankAccounts.asset => const RankingsPageDepositTab(),
            BankAccounts.liability => const RankingsPageCreditTab()
          },
        ),
      ),
    );
  }
}
