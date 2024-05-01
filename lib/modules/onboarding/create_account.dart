import 'package:finsight/models/models.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoPageCreateAccountSection extends HookConsumerWidget {
  final void Function() onNext;
  const InfoPageCreateAccountSection({super.key, required this.onNext});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme) = Theme.of(context);
    final infoNotifier = ref.watch(infoProvider.notifier);
    final info = ref.watch(infoProvider);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    return Column(
      children: [
        const Text(
          "Create account",
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
        SizedBox(
          width: 200,
          height: 40,
          child: DropdownMenu<BankAccountTypeLevel5>(
            key: useMemoized(
              () => ValueKey(info.bankAccounts),
              [info.bankAccounts],
            ),
            hintText: "Bank account type",
            initialSelection: info.bankAccountTypeLevel5,
            dropdownMenuEntries: [
              for (final type in BankAccountTypeLevel5.values)
                if (type.bankAccounts == info.bankAccounts)
                  DropdownMenuEntry(
                    value: type,
                    label: type.label,
                  ),
            ],
            onSelected: (selected) {
              if (selected == null) return;
              infoNotifier.setState(
                (state) => state.copyWith(
                  bankAccountTypeLevel5: selected,
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
            if (info.bankAccounts == null ||
                info.bankAccountTypeLevel5 == null) {
              scaffoldMessenger.showSnackBar(
                const SnackBar(
                  content: Text("Please select both options"),
                ),
              );
              return;
            }

            onNext();
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
