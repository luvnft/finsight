import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:finsight/collections/icons.dart';
import 'package:finsight/modules/home/insights/chat/markdown.dart';
import 'package:finsight/modules/home/insights/chat/use_hint_text.dart';
import 'package:finsight/modules/home/insights/deposit.dart';
import 'package:finsight/providers/conversation/conversation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InsightPageChatSection extends HookConsumerWidget {
  const InsightPageChatSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final mediaQuery = MediaQuery.of(context);
    final ThemeData(:colorScheme) = Theme.of(context);
    final windowType = getWindowType(context);
    final scrollController = useScrollController();
    final controller = useTextEditingController();
    final conversation = ref.watch(conversationProvider);
    final conversationNotifier = ref.read(conversationProvider.notifier);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (scrollController.hasClients) {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          }
        });
        return null;
      },
      [conversation, scrollController],
    );

    void onSubmit() {
      if (controller.text.isEmpty) return;

      conversationNotifier.sendMessage(controller.text);
      controller.clear();
    }

    final msgWidth = windowType <= AdaptiveWindowType.small
        ? mediaQuery.size.width * 0.65
        : mediaQuery.size.width * 0.3;

    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverList.separated(
                separatorBuilder: (context, index) => const Gap(8),
                itemCount: conversation.length,
                itemBuilder: (context, index) {
                  final content = conversation[index];

                  if (content.role == "user") {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        constraints: BoxConstraints(maxWidth: msgWidth),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceVariant,
                          borderRadius: BorderRadius.circular(12)
                              .copyWith(topRight: const Radius.circular(4)),
                        ),
                        child: MarkdownText(
                          text: (content.parts.first as TextPart).text,
                        ),
                      ),
                    );
                  }
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(AppIcons.bulb, size: 18),
                      const Gap(4),
                      Container(
                        padding: const EdgeInsets.all(8),
                        constraints: BoxConstraints(maxWidth: msgWidth),
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(12)
                              .copyWith(topLeft: const Radius.circular(4)),
                        ),
                        child: MarkdownText(
                          text: (content.parts.first as TextPart).text,
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SliverGap(20),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: HookBuilder(
            builder: (context) {
              final hintText = useHintText();

              return TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(AppIcons.send),
                    onPressed: onSubmit,
                  ),
                ),
                onChanged: (_) {
                  if (ref.read(autoPlayProvider)) {
                    ref.read(autoPlayProvider.notifier).state = false;
                  }
                },
                onSubmitted: (_) => onSubmit(),
              );
            },
          ),
        ),
      ],
    );
  }
}
