import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const questions = [
  r"What is the best high-yield account?",
  r"What is the difference between a checking and a savings account?",
  r"How much I can earn on a CD if I deposit $15,000?",
  r"What is the best credit card for gas?",
  r"What is the best cashback card?",
  r"How much cash back can I earn if spend $5,000 on travel",
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
