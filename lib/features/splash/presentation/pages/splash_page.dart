import 'package:flutter/material.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/theme/app_colors.dart';

/// The application's splash page.
///
/// Displays a temporary circular logo placeholder, the studio name,
/// application name, and a short tagline only. It has no navigation, no
/// timer, and no startup logic — those will be wired in by later tasks.
/// The background color comes entirely from the active theme (via
/// [Scaffold]'s default `scaffoldBackgroundColor` lookup), so it is
/// intentionally not set here.
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: AppColors.primary,
                radius: AppSpacing.space32,
                child: Text(
                  'DP',
                  style: textTheme.titleLarge?.copyWith(
                    color: AppColors.onPrimary,
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.space24),
              Text(AppConfig.studioName, style: textTheme.titleMedium),
              const SizedBox(height: AppSpacing.space8),
              Text(AppConfig.appName, style: textTheme.headlineLarge),
              const SizedBox(height: AppSpacing.space12),
              Text(
                'A cozy world of friendship.',
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
