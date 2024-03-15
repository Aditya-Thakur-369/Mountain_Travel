import 'package:flutter/material.dart';
import 'package:mountain_travel/core/common_color/common_color.dart';
import 'package:mountain_travel/router/router_config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      darkTheme: darkmode,
      themeMode: ThemeMode.dark,
    );
  }
}

ThemeData darkmode = ThemeData(
  primaryColor: secondrycolor,
  scaffoldBackgroundColor: secondrycolor,
  useMaterial3: true,
);
