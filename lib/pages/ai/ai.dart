import 'package:finsight/providers/prompts/alerts.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AIPage extends HookConsumerWidget {
  static const name = "AIPage";
  final String csv;
  const AIPage({super.key, required this.csv});

  @override
  Widget build(BuildContext context, ref) {
    final alerts = ref.watch(alertsPromptProvider(csv));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Insight"),
        centerTitle: false,
      ),
      body: switch (alerts) {
        AsyncData(:final value) => Text(value ?? "No response"),
        AsyncError(:final error) => Text(error.toString()),
        _ => const Center(child: CircularProgressIndicator())
      },
    );
  }
}
