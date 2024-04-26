import 'package:finsight/pages/home/home.dart';
import 'package:finsight/pages/home/insights/insights.dart';
import 'package:finsight/pages/home/rankings/rankings.dart';
import 'package:finsight/pages/home/settings/settings.dart';
import 'package:finsight/pages/onboarding/info/info.dart';
import 'package:finsight/pages/onboarding/onboarding.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: OnboardingPage.name,
      builder: (context, state) => const OnboardingPage(),
      routes: [
        GoRoute(
          path: 'info',
          name: InfoPage.name,
          builder: (context, state) => const InfoPage(),
        ),
      ],
    ),
    ShellRoute(
      builder: (context, state, child) => HomeShell(child: child),
      routes: [
        GoRoute(
          path: "/rankings",
          name: RankingsPage.name,
          builder: (context, state) => const RankingsPage(),
        ),
        GoRoute(
          path: "/insights",
          name: InsightsPage.name,
          builder: (context, state) => const InsightsPage(),
        ),
        GoRoute(
          path: "/settings",
          name: SettingsPage.name,
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),
  ],
);
