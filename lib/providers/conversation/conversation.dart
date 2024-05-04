import 'dart:async';
import 'dart:convert';

import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/insights/credit.dart';
import 'package:finsight/modules/home/insights/deposit.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:finsight/providers/supabase/credits/credits.dart';
import 'package:finsight/providers/supabase/deposit/deposit.dart';
import 'package:finsight/services/gemini/gemini.dart';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConversationNotifier extends Notifier<List<Content>> {
  ChatSession? session;

  StreamSubscription? _subscription;

  @override
  build() {
    final info = ref.watch(infoProvider);

    session = gemini.startChat(
      history: [
        Content.text(
          """
          Gemini, you're now an Financial Assistant of mine. You're name is now
          Finsight. When I'll say "Hi" or "Hello", in the reply address yourself
          as Finsight, my personal Finance Assistant, while greeting me and
          let me know. I can ask you anything about finance.
          """,
        ),
        Content.model([
          TextPart(
            "Hi, I'm Finsight, your Financial Assistant.\n"
            "You can ask me anything about finance.",
          ),
        ]),
        Content.text(
          """
          To calculate certain financial metrics, you'll need my bare bones financial
          information. All the bank transactions and account balances are below as CSV
          files. You can use them to calculate the metrics. Do not show me the CSV 
          unless I ask. Just use them to calculate the metrics. Make sure to analyze
          the CSV as well for quick answers.

          ```csv
          ${info.statementCsv?.split("\n").take(500).join("\n")}
          ```
          """,
        ),
        Content.model([
          TextPart(
            "I have received your financial information. What would you like to know?",
          ),
        ]),
        Content.text(
          """
          You've to know about what kind of bank accounts I'm interested in
          and what kind of account offer I want. You can use this information to
          help me with the best offer.
          
          My Name: ${info.name}
          My account type for this application: ${info.accountType?.name}
          My bank account type: ${info.bankAccounts?.name}
          More granular account type: ${info.bankAccountTypeLevel5?.label}
          Do I have bank account: ${info.hasBankAccount}
          Name of my bank account: ${info.accountName}
          """,
        ),
        Content.model([
          TextPart(
            "Ok, I'll remember that for future",
          ),
        ]),
        Content.text("Also, do not tell me to consult a financial advisor."),
        Content.model([
          TextPart("Ok, I'll not tell you to consult a financial advisor."),
        ]),
        Content.text(
          """
          If I submit you some data (json, csv etc) and ask you some question
          and you don't find answer to it, don't reply with I cannot find the
          answer in the provider <whatever format> data. Instead, you'll say
          "I'm sorry but, I can't find the answer to your question."
          """,
        ),
        Content.model([
          TextPart("Ok, I'll remember that for future"),
        ]),
        Content.text(
          """
          When I asked questions that directly relate to the data I've provided
          e.g.
          What is my highest spending category? What is my total expense? What is my total
          income? etc.
          You can answer them based on the data I've provided. You should always
          remember to use the data I've provided to answer these questions.
          """,
        ),
        Content.model([
          TextPart(
            "Ok, I'll remember that for future and will use the data you've "
            "provided and analyze it before answering the questions.",
          ),
        ]),
        Content.text("Do you have the CSV file I provided?"),
        Content.model([
          TextPart(
            "Yes, I've. I'll use it to calculate the metrics and answers.",
          ),
        ]),
        Content.text(
          "Ok, from now on use/analyze the CSV to answer my questions",
        ),
        Content.model([
          TextPart(
            "Ok, I'll remember that and will use the CSV to answer "
            "your questions.",
          ),
        ]),
      ],
    );

    final statementCsv = info.statementCsv?.split("\n") ?? [];

    if (statementCsv.length > 300) {
      // partition the CSV into parts of 500 lines or less (last one can be less)
      // skip the first 500 lines as they are already sent
      final parts = <String>[];
      for (var i = 500; i < statementCsv.length; i += 300) {
        parts.add(statementCsv.skip(i).take(300).join("\n"));
      }

      for (final part in parts) {
        Future<dynamic>.value(session!.sendMessage(
          Content.text(
            """
            Here's a part of my financial information in CSV format. You can
            merge it with the previous parts to get the full CSV. Make sure to
            analyze the CSV as well for quick answers.
            
            ```csv
            $part
            ```
            """,
          ),
        )).then(
          (responses) {
            debugPrint("Sent CSV part: ${responses.text}");
            return responses;
          },
        ).catchError((e) {
          debugPrint("Error sending CSV parts ${parts.indexOf(part)}: $e");
          return null;
        });
      }
    }

    ref.onDispose(() {
      _subscription?.cancel();
    });
    return [
      Content.model(
        [
          TextPart(
            "Hello! I am **Finsight**, a virtual financial assistant."
            "I am designed to help you with a wide range of financial tasks, including:\n"
            "- **Providing financial information**: I can provide you with information"
            " on a wide range of financial topics, including budgeting, saving, "
            "investing, and retirement planning.\n"
            "- **Answering financial questions**: I can answer your questions about "
            "financial concepts, products, and services.\n"
            "Performing financial calculations: I can perform various financial "
            "calculations, such as calculating loan payments, retirement savings"
            " goals, and investment returns.\n"
            "- **Creating financial plans**: I can help you create personalized "
            "financial plans that outline your financial goals and strategies "
            "for achieving them.\n"
            "- **Tracking financial progress**: I can help you track your financial"
            " progress and identify areas where you can improve your financial health.\n"
            "\n"
            "I am constantly learning and expanding my capabilities, so I can"
            " assist you with an increasingly wide range of financial "
            "tasks in the future.\n"
            "\n"
            "**How can I help you today?**\n",
          ),
        ],
      ),
    ];
  }

  final Set<String> _sentOfferIds = {};

  Object? activeOffer() {
    final depositIndex = ref.read(selectedDepositOfferIndex);
    final creditIndex = ref.read(selectedCreditsOfferIndex);

    final deposits = ref.read(depositProvider);
    final credits = ref.read(creditProvider);

    final info = ref.read(infoProvider);

    return info.bankAccounts == BankAccounts.asset
        ? deposits.asData?.value.depositsMap.values
            .expand((s) => s)
            .elementAt(depositIndex)
            .copyWith(imageExternalUrl: "")
        : credits.asData?.value.creditsMap.values
            .expand((s) => s)
            .elementAt(creditIndex)
            .copyWith(imageExternalUrl: "");
  }

  Future<void> sendMessage(String message) async {
    if (session == null) return;

    final active = activeOffer() as dynamic;
    final prompt = active == null || _sentOfferIds.contains(active.id)
        ? message
        : """
          ```json
          ${active.toJson()}
          ```
          This is an offer you can know about. You can answer me questions related
          to this as well. You should keep it mind just as the CSV. Now, please
          answer my below question and don't add anything else in the reply.

          Question: $message
          """;

    state = [
      ...state,
      // User doesn't need to see the JSON offer prompt prefix
      Content.text(message),
    ];

    final nextIndex = state.length;

    _subscription?.cancel();
    _subscription = session!.sendMessageStream(Content.text(prompt)).listen(
      (res) {
        final newState = state.toList();

        if (newState.length > nextIndex) {
          newState[nextIndex] = Content.model(
            [
              TextPart(
                "${(newState[nextIndex].parts.first as TextPart).text}${res.text}",
              )
            ],
          );
        } else {
          newState.add(res.candidates.first.content);
        }

        state = newState;
      },
      onDone: () {
        if (active != null) _sentOfferIds.add(active.id);
      },
    );
  }
}

final conversationProvider =
    NotifierProvider<ConversationNotifier, List<Content>>(
  () => ConversationNotifier(),
);
