import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoPageFindBankSection extends HookConsumerWidget {
  final void Function() onNext;
  const InfoPageFindBankSection({super.key, required this.onNext});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme, :colorScheme) = Theme.of(context);

    return Column(
      children: [
        const Text(
          "Let’s find the best account for your needs",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(20),
        SegmentedButton(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              textTheme.bodySmall!.copyWith(
                height: 0.9,
              ),
            ),
          ),
          selected: const {"asset"},
          onSelectionChanged: (selection) {},
          segments: const [
            ButtonSegment(
              value: "asset",
              label: Text(
                "Asset\n(e.g. bank)",
                textAlign: TextAlign.center,
              ),
            ),
            ButtonSegment(
              value: "liability",
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
            items: const [
              DropdownMenuItem(
                child: Text("Account Type"),
              )
            ],
            onChanged: (selected) {},
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
          onPressed: () {},
          style: FilledButton.styleFrom(
            minimumSize: const Size(200, 40),
          ),
          child: const Text("Continue"),
        ),
      ],
    );
  }
}
