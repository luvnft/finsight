import 'package:file_picker/file_picker.dart';
import 'package:finsight/pages/home/home.dart';
import 'package:finsight/pages/home/insights/insights.dart';
import 'package:finsight/pages/home/rankings/rankings.dart';
import 'package:finsight/pages/home/settings/settings.dart';
import 'package:finsight/pages/onboarding/info/csv_edit.dart';
import 'package:finsight/pages/onboarding/info/info.dart';
import 'package:finsight/pages/onboarding/onboarding.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider((ref) => GoRouter(
      navigatorKey: rootNavigatorKey,
      routes: [
        GoRoute(
          path: '/',
          name: OnboardingPage.name,
          builder: (context, state) => const OnboardingPage(),
          redirect: (context, state) {
            final info = ref.read(infoProvider.notifier);

            if (info.isFilled && state.uri.path == "/") {
              return '/rankings';
            }

            return null;
          },
          routes: [
            GoRoute(
              path: 'info',
              name: InfoPage.name,
              builder: (context, state) => const InfoPage(),
              routes: [
                GoRoute(
                  path: "csv_edit",
                  name: CSVEditPage.name,
                  builder: (context, state) => CSVEditPage(
                    file: state.extra as PlatformFile,
                  ),
                ),
              ],
            ),
          ],
        ),
        ShellRoute(
          navigatorKey: shellNavigatorKey,
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
    ));
