import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Root widget of the Dream Pet Island application.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dream Pet Island',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const Scaffold(),
    );
  }
}
