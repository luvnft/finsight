import 'package:file_picker/file_picker.dart';
import 'package:finsight/pages/ai/ai.dart';
import 'package:finsight/pages/csv_edit/csv_edit.dart';
import 'package:finsight/pages/home/home.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomePage.name,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/csv',
      name: CSVEditPage.name,
      builder: (context, state) =>
          CSVEditPage(file: state.extra as PlatformFile),
    ),
    GoRoute(
      path: '/ai',
      name: AIPage.name,
      builder: (context, state) => AIPage(csv: state.extra as String),
    ),
  ],
);
