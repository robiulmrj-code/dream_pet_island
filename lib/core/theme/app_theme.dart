import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

/// Central access point for the application's themes.
abstract final class AppTheme {
  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        error: AppColors.error,
        onError: AppColors.onError,
        surface: AppColors.surface,
        onSurface: AppColors.textPrimary,
      ),
      textTheme: AppTypography.textTheme,
    );
  }
}
