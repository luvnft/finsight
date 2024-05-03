import 'package:finsight/collections/icons.dart';
import 'package:finsight/extensions/strings.dart';
import 'package:finsight/pages/home/settings/csv_view.dart';
import 'package:finsight/pages/onboarding/info/info.dart';
import 'package:finsight/providers/info/info.dart';
import 'package:finsight/providers/preferences/preferences.dart';
import 'package:finsight/services/csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends HookConsumerWidget {
  static const name = "SettingsPage";
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final preferences = ref.watch(preferencesProvider);
    final preferencesNotifier = ref.watch(preferencesProvider.notifier);
    final ThemeData(:colorScheme) = Theme.of(context);
    final info = ref.watch(infoProvider);

    final infoMap = {
      "Name": info.name,
      "User Account Type": info.accountType?.label.capitalize(),
      "Bank Account": info.bankAccounts?.label.capitalize(),
      if (info.hasBankAccount == true) ...{
        "Account Name": info.accountName,
        "Account Category": info.bankAccountTypeLevel5?.label,
      } else
        "Bank Account Type": info.bankAccountType?.label.capitalize(),
    };

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: ListTileTheme(
            dense: false,
            tileColor: colorScheme.surfaceVariant,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SliverList.list(
              children: [
                Card(
                  color: colorScheme.surfaceVariant,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: const Text("User Information"),
                        leading: const Icon(Icons.person_outline_rounded),
                        contentPadding:
                            const EdgeInsets.all(8).copyWith(bottom: 0),
                        trailing: IconButton.filled(
                          icon: const Icon(AppIcons.edit),
                          style: IconButton.styleFrom(
                            foregroundColor: colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () => context.pushNamed(InfoPage.name),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Table(
                          children: [
                            for (final entry in infoMap.entries)
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(
                                      entry.key,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(entry.value ?? "N/A"),
                                  ),
                                ],
                              ),
                            TableRow(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    "Statement CSV",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: info.statementCsv != null
                                      ? FilledButton(
                                          onPressed: () {
                                            context.pushNamed(
                                              CSVViewPage.name,
                                              extra: CSVService.instance
                                                  .convertToList(
                                                info.statementCsv!,
                                              ),
                                            );
                                          },
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("View"),
                                              Gap(5),
                                              Icon(AppIcons.openLink),
                                            ],
                                          ),
                                        )
                                      : const Text("Haven't uploaded yet"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                ListTile(
                  leading: const Icon(AppIcons.theme),
                  title: const Text("Theme"),
                  trailing: DropdownButton<ThemeMode>(
                    value: preferences.themeMode,
                    onChanged: (value) {
                      if (value == null) return;
                      preferencesNotifier.setState(
                        (s) => s.copyWith(themeMode: value),
                      );
                    },
                    items: [
                      for (final themeMode in ThemeMode.values)
                        DropdownMenuItem(
                          value: themeMode,
                          child: Text(
                            themeMode.name.capitalize(),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverGap(20),
        SliverToBoxAdapter(
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(text: "Finsight by "),
                const TextSpan(
                  text: "M",
                  style: TextStyle(
                    fontFamily: "BC Alphapipe",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: "axint",
                  style: GoogleFonts.genosTextTheme().headlineMedium?.copyWith(
                        fontFamily: "BC Alphapipe",
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
