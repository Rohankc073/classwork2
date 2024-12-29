import 'package:classwork2/core/app_theme/app_theme.dart';
import 'package:classwork2/view/dashboard.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Class Work 2',
      theme: getApplicationTheme(),
      home: const DashboardView(), // Use a plain widget for the dashboard
    );
  }
}
