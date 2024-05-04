import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoPageBankAccountSection extends HookConsumerWidget {
  final void Function() onNext;
  const InfoPageBankAccountSection({super.key, required this.onNext});

  @override
  Widget build(BuildContext context, ref) {
    final infoNotifier = ref.read(infoProvider.notifier);

    void onSubmit(bool hasBank) {
      infoNotifier.setState(
        (state) {
          if (hasBank) {
            return state.copyWith(
                hasBankAccount: hasBank, bankAccountType: null);
          } else {
            return state.copyWith(
              hasBankAccount: hasBank,
              bankAccountTypeLevel5: null,
              accountName: null,
              statementCsv: null,
            );
          }
        },
      );
      onNext();
    }

    return Column(
      children: [
        const Gap(20),
        const Text(
          "Do you have a bank account?",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(20),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FilledButton(
                child: const Text("Yes"),
                onPressed: () {
                  onSubmit(true);
                },
              ),
              const Gap(10),
              FilledButton(
                child: const Text("No"),
                onPressed: () {
                  onSubmit(false);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
