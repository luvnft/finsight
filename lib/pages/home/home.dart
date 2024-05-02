import 'package:finsight/pages/home/insights/insights.dart';
import 'package:finsight/pages/home/rankings/rankings.dart';
import 'package:finsight/pages/home/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

final navItems = [
  (
    icon: Icons.sort_rounded,
    activeIcon: Icons.sort_rounded,
    title: "Rankings",
    name: RankingsPage.name,
    path: "/rankings",
  ),
  (
    icon: Icons.emoji_objects_outlined,
    activeIcon: Icons.emoji_objects,
    title: "Insights",
    name: InsightsPage.name,
    path: "/insights",
  ),
  (
    icon: Icons.settings_outlined,
    activeIcon: Icons.settings,
    title: "Settings",
    name: SettingsPage.name,
    path: "/settings",
  )
];

class HomeShell extends HookConsumerWidget {
  final Widget child;
  const HomeShell({super.key, required this.child});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:colorScheme) = Theme.of(context);
    final matchedRoute = GoRouterState.of(context).matchedLocation;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SalomonBottomBar(
          selectedItemColor: colorScheme.primary,
          currentIndex:
              navItems.indexWhere((item) => matchedRoute.startsWith(item.path)),
          onTap: (i) {
            final item = navItems[i];
            context.goNamed(item.name);
          },
          items: [
            for (final item in navItems)
              SalomonBottomBarItem(
                icon: Icon(item.icon),
                activeIcon: Icon(item.activeIcon),
                title: Text(item.title),
              ),
          ],
        ),
      ),
      body: child,
    );
  }
}
