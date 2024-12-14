import 'package:flutter/material.dart';
import 'package:submission_beginner_flutter/router/app_router.dart';
import 'package:submission_beginner_flutter/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      routerConfig: AppRouter.router,
    );
  }
}
