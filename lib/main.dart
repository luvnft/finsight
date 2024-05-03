import 'package:finsight/collections/env.dart';
import 'package:finsight/collections/routes.dart';
import 'package:finsight/collections/theme.dart';
import 'package:finsight/providers/preferences/preferences.dart';
import 'package:finsight/services/isar/isar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Env.supabaseUrl,
    anonKey: Env.supabaseAnonKey,
    debug: kDebugMode,
    authOptions: const FlutterAuthClientOptions(
      authFlowType: AuthFlowType.implicit,
    ),
  );

  if (Supabase.instance.client.auth.currentSession == null) {
    await Supabase.instance.client.auth.signInWithPassword(
      email: Env.email,
      password: Env.password,
    );
  }

  await IsarService.initialize();
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(
      preferencesProvider.select((s) => s.themeMode),
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: "Finsight",
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
