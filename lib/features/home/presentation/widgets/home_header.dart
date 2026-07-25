import 'package:flutter/material.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/constants/app_spacing.dart';

/// A reusable header displaying the studio/app identity and a profile
/// avatar placeholder.
class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppConfig.studioName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: AppSpacing.space4),
            Text(
              AppConfig.appName,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        const CircleAvatar(
          radius: AppSpacing.space24,
          child: Text('DP'),
        ),
      ],
    );
  }
}
