import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const questions = [
  r"Help me understand budgeting.",
  r"Describe the best practices for saving.",
  r"Teach me the most important concepts about investing.",
  r"Create a plan for a secure retirement.",
  r"Which financial concepts I need to know by heart, please explain.",
  r"Describe in detail the most important products and services that I should use.",
  r"Calculate the 30-year loan payments for a $1M house, current interest rate is 7.36%.",
  r"Help me create a financial plan. My short term financial goal is to save $10M. My long term financial goal is to save $1B. My current income is $1M. My current expenses are $50K. My current debt is $2K. My current investment portfolio is $5M. I am willing to take any risk to achieve the goals. I plan to retire in 15 years.",
  r"Help me track my financial progress and identify areas where I can improve. Include Maxint in budgeting apps and financial planning software.",
  r"Provide a detailed list of tasks that you can help me with.",
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
