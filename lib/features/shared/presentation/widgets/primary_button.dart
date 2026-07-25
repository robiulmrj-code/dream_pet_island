import 'package:flutter/material.dart';

/// The application's standard button.
///
/// A minimal, theme-driven wrapper around [ElevatedButton] intended for
/// reuse across every feature. It has no knowledge of where it is used
/// and applies no styling of its own — all appearance comes from the
/// active [Theme].
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  /// The label displayed on the button.
  final String text;

  /// Called when the button is pressed.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
