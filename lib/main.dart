import 'package:finsight/collections/routes.dart';
import 'package:finsight/collections/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: "Finsight",
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
