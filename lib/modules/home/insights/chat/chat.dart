import 'package:finsight/collections/icons.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/insights/credit.dart';
import 'package:finsight/modules/home/insights/deposit.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:finsight/providers/supabase/credits/credits.dart';
import 'package:finsight/providers/supabase/deposit/deposit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InsightPageChatSection extends HookConsumerWidget {
  const InsightPageChatSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final depositIndex = ref.watch(selectedDepositOfferIndex);
    final creditIndex = ref.watch(selectedCreditsOfferIndex);

    final deposits = ref.watch(depositProvider);
    final credits = ref.watch(creditProvider);

    final info = ref.watch(infoProvider);

    final activeItem = info.bankAccounts == BankAccounts.asset
        ? deposits.asData?.value.depositsMap.values
            .expand((s) => s)
            .elementAt(depositIndex)
        : credits.asData?.value.creditsMap.values
            .expand((s) => s)
            .elementAt(creditIndex);

    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [],
          ),
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
                hintText: "Are there any fees?",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(AppIcons.send),
                  onPressed: () {},
                )),
          ),
        ),
      ],
    );
  }
}
