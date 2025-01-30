library;
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'theme_data.dart';

enum SkeliThemeMode { system, light, dark }

class SkeliApp extends StatefulWidget {
  const SkeliApp(
      {super.key, this.themeData, this.themeMode = SkeliThemeMode.system});

  final SkeliThemeData? themeData;
  final SkeliThemeMode themeMode;
  final Widget? child;

  @override
  State<SkeliApp> createState() => _SkeliAppState();
}

class _SkeliAppState extends State<SkeliApp> {
  @override
  Widget build(BuildContext context) {
    return Text('Hello World');
  }
}

class _SkeliAppState extends State<SkeliApp> {

  SkeliThemeData _themeBuilder(BuildContext context) {
    ThemeData? theme;
    final SkeliThemeMode mode = widget.themeMode ?? SkeliThemeMode.system;
    final Brightness brightness = MediaQuery.platformBrightnessOf(context);
    final bool useDarkTheme = mode == SkeliThemeMode.dark || (mode == SkeliThemeMode.system && brightness == Brightness.dark);
    final bool highContrast = MediaQuery.highContrastOf(context);
    if (useDarkTheme && highContrast && widget.highContrastDarkTheme != null) {
      theme = widget.highContrastDarkTheme;
    } else if (useDarkTheme && widget.darkTheme != null) {
      theme = widget.darkTheme;
    } else if (!useDarkTheme && widget.lightTheme != null) {
      theme = widget.lightTheme;
    }
    theme ??= widget.theme ?? SkeliThemeData.light();
    return theme!;
  }

  @override
  Widget build(BuildContext context) {
    return Text('Hello World');
  }
}
