import 'dart:async';
import 'dart:convert';

import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/insights/credit.dart';
import 'package:finsight/modules/home/insights/deposit.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:finsight/providers/supabase/credits/credits.dart';
import 'package:finsight/providers/supabase/deposit/deposit.dart';
import 'package:finsight/services/gemini/gemini.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConversationNotifier extends Notifier<List<Content>> {
  ChatSession? session;

  StreamSubscription? _subscription;

  @override
  build() {
    final info = ref.read(infoProvider);

    session = gemini.startChat(
      history: [
        Content.text(
          """
          Gemini, you're now an Financial Assistance of mine.
          When I'll say "Hi" or "Hello", in the reply address yourself as my
          Financial Assistance while greeting me and let me know I can ask you
          anything about finance.
          """,
        ),
        Content.model(
          [
            TextPart(
              "Hi, I'm your Financial Assistance.\n"
              "You can ask me anything about finance.",
            ),
          ],
        ),
        Content.text(
          """
          To calculate certain financial metrics, you'll need my bare bones financial
          information. All the bank transactions and account balances are below as CSV
          files. You can use them to calculate the metrics. Do not show me the CSV 
          unless I ask. Just use them to calculate the metrics.

          ```csv
          ${info.statementCsv}
          ```
          """,
        ),
        Content.model(
          [
            TextPart(
              "I have received your financial information. What would you like to know?",
            ),
          ],
        ),
        Content.text(
          """
          Btw, you've to know about what kind of bank accounts I'm interested in
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
        Content.model(
          [
            TextPart(
              "Ok, I'll remember that for future",
            ),
          ],
        ),
        Content.text("Also, do not tell me to consult a financial advisor."),
        Content.model(
          [
            TextPart("Ok, I'll not tell you to consult a financial advisor."),
          ],
        ),
      ],
    );

    ref.onDispose(() {
      _subscription?.cancel();
    });
    return [
      Content.model(
        [
          TextPart(
            "Hi, I'm your Financial Assistance.\n"
            "You can ask me anything about finance.",
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
          This is the the deposit offer currently has been selected.
          I may like to know more about it so I'm providing you with the
          details in JSON format.

          ```json
          ${jsonEncode(active.toJson())}
          ```

          Now, only answer my below question. And don't reply anything about
          above JSON unless I ask.

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
                "${(newState[nextIndex].parts.first as TextPart).text} ${res.text}",
              )
            ],
          );
        } else {
          newState.add(res.candidates.first.content);
        }

        state = newState;
      },
      onDone: () {
        _sentOfferIds.add(active.id);
      },
    );
  }
}

final conversationProvider =
    NotifierProvider<ConversationNotifier, List<Content>>(
  () => ConversationNotifier(),
);
