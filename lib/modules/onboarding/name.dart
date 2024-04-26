import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoPageNameSection extends HookConsumerWidget {
  final void Function() onNext;
  const InfoPageNameSection({super.key, required this.onNext});

  @override
  Widget build(BuildContext context, ref) {
    final textTheme = Theme.of(context).textTheme;
    final formKey = useMemoized(() => GlobalKey<FormState>(), []);
    final infoName = ref.watch(infoProvider.select((value) => value.name));
    final controller = useTextEditingController(text: infoName);

    void onSubmit() {
      if (formKey.currentState!.validate()) {
        ref.read(infoProvider.notifier).setState(
              (state) => state.copyWith(name: controller.text),
            );
        onNext();
      }
    }

    return Column(
      children: [
        const Gap(20),
        const Text(
          "My first name is",
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
            children: [
              Form(
                key: formKey,
                child: TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: "Money",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                  onFieldSubmitted: (_) => onSubmit(),
                ),
              ),
              const Gap(5),
              Text(
                "Your name is used to personalize your insights",
                textAlign: TextAlign.center,
                style: textTheme.bodySmall,
              ),
              const Gap(20),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: onSubmit,
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
