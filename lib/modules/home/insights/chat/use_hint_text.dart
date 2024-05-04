import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const questions = [
  "Provide a detailed list of tasks that you can help me with.",
  "Help me understand budgeting.",
  "Describe the best practices for saving.",
  "Teach me the most important concepts about investing.",
];

String useHintText() {
  final active = useState(questions[0]);

  useEffect(() {
    Timer? timer;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      timer = Timer.periodic(const Duration(seconds: 3), (timer) {
        final index = questions.indexOf(active.value);
        active.value = questions[(index + 1) % questions.length];
      });
    });

    return timer?.cancel;
  }, []);

  return active.value;
}
