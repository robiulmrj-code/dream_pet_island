import 'package:flutter/material.dart';

/// The application's standard row component.
///
/// A minimal, theme-driven wrapper around [ListTile] intended for reuse
/// across every feature. It has no knowledge of where it is used and
/// applies no styling of its own — all appearance comes from the active
/// [Theme].
class AppListTile extends StatelessWidget {
  const AppListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
  });

  /// The primary text displayed for this row.
  final String title;

  /// Optional secondary text displayed below [title].
  final String? subtitle;

  /// Optional widget displayed before [title].
  final Widget? leading;

  /// Optional widget displayed after [title].
  final Widget? trailing;

  /// Called when this row is tapped.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      leading: leading,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
