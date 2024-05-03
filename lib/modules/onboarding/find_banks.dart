import 'package:finsight/extensions/strings.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/pages/onboarding/onboarding.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoPageFindBankSection extends HookConsumerWidget {
  final void Function() onNext;
  const InfoPageFindBankSection({super.key, required this.onNext});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme, :colorScheme) = Theme.of(context);
    final infoNotifier = ref.watch(infoProvider.notifier);
    final info = ref.watch(infoProvider);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    return Column(
      children: [
        const Text(
          "Let's find the best account for your needs",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(20),
        SegmentedButton<BankAccounts>(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              textTheme.bodySmall!.copyWith(
                height: 0.9,
              ),
            ),
          ),
          selected: {if (info.bankAccounts != null) info.bankAccounts!},
          emptySelectionAllowed: true,
          onSelectionChanged: (selection) {
            if (selection.isNotEmpty) {
              infoNotifier.setState(
                (state) => state.copyWith(
                  bankAccounts: selection.first,
                ),
              );
            }
          },
          segments: const [
            ButtonSegment(
              value: BankAccounts.asset,
              label: Text(
                "Asset\n(e.g. bank)",
                textAlign: TextAlign.center,
              ),
            ),
            ButtonSegment(
              value: BankAccounts.liability,
              label: Text(
                "Liability\n(e.g. credit card)",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const Gap(40),
        Ink(
          decoration: BoxDecoration(
            color: colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButton(
            underline: const SizedBox.shrink(),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            isDense: true,
            borderRadius: BorderRadius.circular(10),
            hint: const Text("Bank account type"),
            value: info.bankAccountType,
            items: [
              for (final b in BankAccountType.values)
                DropdownMenuItem(
                  value: b,
                  child: Text(b.name.capitalize()),
                ),
            ],
            onChanged: (selected) {
              if (selected == null) return;
              infoNotifier.setState(
                (state) => state.copyWith(
                  bankAccountType: selected,
                ),
              );
            },
          ),
        ),
        const Gap(40),
        Text(
          "Account to maximize your earnings",
          textAlign: TextAlign.center,
          style: textTheme.bodySmall,
        ),
        const Gap(10),
        FilledButton(
          onPressed: () {
            if (info.bankAccounts == null || info.bankAccountType == null) {
              scaffoldMessenger.showSnackBar(
                const SnackBar(
                  content: Text("Please select both options"),
                ),
              );
              return;
            }

            onNext();
            context.goNamed(OnboardingPage.name);
          },
          style: FilledButton.styleFrom(
            minimumSize: const Size(200, 40),
          ),
          child: const Text("Continue"),
        ),
      ],
    );
  }
}
