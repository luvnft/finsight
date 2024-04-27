import 'package:finsight/modules/onboarding/account_type.dart';
import 'package:finsight/modules/onboarding/bank_account.dart';
import 'package:finsight/modules/onboarding/create_account.dart';
import 'package:finsight/modules/onboarding/find_banks.dart';
import 'package:finsight/modules/onboarding/name.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoPage extends HookConsumerWidget {
  static const name = "InfoPage";
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = usePageController();
    final hasBankAccount =
        ref.watch(infoProvider.select((value) => value.hasBankAccount));

    void onNextPage() {
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    final pages = [
      InfoPageNameSection(onNext: onNextPage),
      InfoPageAccountTypeSection(onNext: onNextPage),
      InfoPageBankAccountSection(onNext: onNextPage),
      if (hasBankAccount == true)
        InfoPageCreateAccountSection(onNext: onNextPage),
      if (hasBankAccount == false) InfoPageFindBankSection(onNext: onNextPage),
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Row(
          children: [
            IconButton(
              icon: const BackButtonIcon(),
              onPressed: () {
                controller.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              style: IconButton.styleFrom(iconSize: 12),
            ),
            Expanded(
              child: ListenableBuilder(
                listenable: controller,
                builder: (context, _) {
                  return LinearProgressIndicator(
                    value: ((controller.page ?? 0) + 1) /
                        pages.length, // page index / length of pages
                    backgroundColor: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  );
                },
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: PageView(
          controller: controller,
          children: pages,
        ),
      ),
    );
  }
}
