import 'package:flutter/material.dart';

import '../../../../core/constants/app_spacing.dart';

/// The application's standard surface container.
///
/// A minimal, theme-driven wrapper around [Card] intended for reuse
/// across every feature. It has no knowledge of its contents and applies
/// no styling of its own beyond consistent internal padding — all card
/// appearance comes from the active [Theme].
class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
  });

  /// The content displayed inside the card.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.space16),
        child: child,
      ),
    );
  }
}
