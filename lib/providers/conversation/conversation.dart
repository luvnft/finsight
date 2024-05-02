import 'dart:async';

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

    ref.onDispose(() {
      _subscription?.cancel();
    });
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
            TextPart("Hi, I'm your Financial Assistance."),
            TextPart(
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
        Content.text("Also, do not tell me to consult a financial advisor."),
        Content.model(
          [
            TextPart("Ok, I'll not tell you to consult a financial advisor."),
          ],
        ),
      ],
    );
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
        : credits.asData?.value.creditsMap.values
            .expand((s) => s)
            .elementAt(creditIndex);
  }

  Future<void> sendMessage(String message) async {
    if (session == null) return;

    state = [
      ...state,
      Content.text(message),
    ];

    final nextIndex = state.length;

    _subscription?.cancel();
    _subscription = session!.sendMessageStream(Content.text(message)).listen(
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
    );
  }
}

final conversationProvider =
    NotifierProvider<ConversationNotifier, List<Content>>(
  () => ConversationNotifier(),
);
