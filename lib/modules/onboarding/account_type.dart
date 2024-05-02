import 'package:finsight/models/models.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoPageAccountTypeSection extends HookConsumerWidget {
  final void Function() onNext;
  const InfoPageAccountTypeSection({super.key, required this.onNext});

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;
    final infoNotifier = ref.read(infoProvider.notifier);

    void onSubmitted(SupabaseCustomerType type) {
      infoNotifier.setState(
        (state) => state.copyWith(accountType: type),
      );
      onNext();
    }

    return Column(
      children: [
        const Gap(20),
        const Text(
          "This is my",
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
                child: const Text("Business Account"),
                onPressed: () {
                  onSubmitted(SupabaseCustomerType.business);
                },
              ),
              const Gap(10),
              FilledButton(
                child: const Text("Personal Account"),
                onPressed: () {
                  onSubmitted(SupabaseCustomerType.personal);
                },
              ),
              const Gap(10),
              FilledButton(
                child: const Text("Student Account"),
                onPressed: () {
                  onSubmitted(SupabaseCustomerType.student);
                },
              ),
              const Gap(10),
              Text(
                "Account type used to personalize offer types",
                textAlign: TextAlign.center,
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
