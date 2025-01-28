library;

import 'package:flutter/widgets.dart';

import 'theme_data.dart';

class SkeliTheme extends StatelessWidget {
  const SkeliTheme({
    super.key,
    required this.data,
    required this.child,
  });

  final SkeliThemeData data;
  final Widget child;

  static SkeliThemeData? of(BuildContext context) {
    return context.getInheritedWidgetOfExactType<_InheritedTheme>()?.theme.data;
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedTheme(
      theme: this,
      child: child,
    );
  }
}

class _InheritedTheme extends InheritedWidget {
  const _InheritedTheme({
    required this.theme,
    required super.child,
  });

  final SkeliTheme theme;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return SkeliTheme(
      data: theme.data,
      child: child,
    );
  }

  @override
  bool updateShouldNotify(_InheritedTheme oldWidget) =>
      theme != oldWidget.theme;
}
