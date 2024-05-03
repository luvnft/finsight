import 'package:finsight/pages/onboarding/info/info.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends StatelessWidget {
  static const name = 'OnboardingPage';
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData(:textTheme) = Theme.of(context);

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            transform: const GradientRotation(0.5),
            colors: [
              Colors.blue[900]!,
              Colors.greenAccent,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              Text(
                "Finsight",
                style: textTheme.displayMedium!.copyWith(
                  color: Colors.white,
                ),
              ),
              const Gap(20),
              Text(
                "Financial insights\n" "powered by AI",
                style: textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(20),
              OutlinedButton(
                onPressed: () {
                  context.goNamed(InfoPage.name);
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                  foregroundColor: Colors.white,
                ),
                child: const Text("Try now"),
              ),
              const Spacer(),
              Text.rich(
                const TextSpan(
                  children: [
                    TextSpan(text: "by "),
                    TextSpan(
                      text: "Maxint",
                      style: TextStyle(
                        fontFamily: "BC Alphapipe",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                style: textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
