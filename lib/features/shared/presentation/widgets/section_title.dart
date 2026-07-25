import 'package:flutter/material.dart';

import '../../../../core/constants/app_spacing.dart';

/// A reusable section heading used across feature screens.
class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});

  /// The heading text to display.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.space8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
