import 'package:flutter/material.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/constants/app_spacing.dart';

/// The application's splash page.
///
/// Displays the studio and application name only. It has no navigation,
/// no timer, and no startup logic — those will be wired in by later
/// tasks. The background color comes entirely from the active theme
/// (via [Scaffold]'s default `scaffoldBackgroundColor` lookup), so it is
/// intentionally not set here.
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(AppConfig.studioName, style: textTheme.titleMedium),
            const SizedBox(height: AppSpacing.space8),
            Text(AppConfig.appName, style: textTheme.headlineLarge),
          ],
        ),
      ),
    );
  }
}
