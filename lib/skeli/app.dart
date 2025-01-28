import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'theme_data.dart';

enum SkeliThemeMode { system, light, dark }

class SkeliApp extends StatelessWidget {
  const SkeliApp(
      {super.key, this.themeData, this.themeMode = SkeliThemeMode.system});

  final SkeliThemeData? themeData;
  final SkeliThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return Text('Hello World');
  }
}
