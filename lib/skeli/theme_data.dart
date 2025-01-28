library;

import 'package:flutter/foundation.dart';

import 'colors.dart';

class Adaption<T> {
  const Adaption();

  Type get type => T;

  T adapt(SkeliThemeData theme, T defaultValue) => defaultValue;
}

abstract class SkeliThemeExtension<T extends SkeliThemeExtension<T>> {
  const SkeliThemeExtension();

  Object get type => T;

  SkeliThemeExtension<T> copyWith();

  SkeliThemeExtension<T> lerp(covariant SkeliThemeExtension<T> other, double t);
}

enum SkeliTapTargetSize { padded, shrinkwrap }

@immutable
class SkeliThemeData with Diagnosticable {
  factory SkeliThemeData({
    TargetPlatform? platform,
    SkeliTapTargetSize? skeliTapTargetSize,
    Iterable<Adaption<Object>>? adaptions,
    Brightness? brightness,
    SkeliColor? primaryColor,
    SkeliColor? primaryColorLight,
    SkeliColor? primaryColorDark,
    SkeliColor? secondaryColor,
    SkeliColor? secondaryColorLight,
    SkeliColor? secondaryColorDark,
    SkeliColor? tertiaryColor,
    SkeliColor? tertiaryColorLight,
    SkeliColor? tertiaryColorDark,
    SkeliColor? errorColor,
    SkeliColor? errorColorLight,
    SkeliColor? errorColorDark,
    SkeliColor? onPrimaryColor,
    SkeliColor? onPrimaryColorLight,
    SkeliColor? onPrimaryColorDark,
    SkeliColor? onSecondaryColor,
    SkeliColor? onSecondaryColorLight,
    SkeliColor? onSecondaryColorDark,
    SkeliColor? onTertiaryColor,
    SkeliColor? onTertiaryColorLight,
    SkeliColor? onTertiaryColorDark,
    SkeliColor? onErrorColor,
    SkeliColor? onErrorColorLight,
    SkeliColor? onErrorColorDark,
    SkeliColor? backgroundColor,
    SkeliColor? backgroundColorLight,
    SkeliColor? backgroundColorDark,
    SkeliColor? onBackgroundColor,
    SkeliColor? onBackgroundColorLight,
    SkeliColor? onBackgroundColorDark,
    SkeliColor? surfaceColor,
    SkeliColor? surfaceColorLight,
    SkeliColor? surfaceColorDark,
    SkeliColor? surfaceBrightColor,
    SkeliColor? surfaceBrightColorLight,
    SkeliColor? surfaceBrightColorDark,
    SkeliColor? surfaceDimColor,
    SkeliColor? surfaceDimColorLight,
    SkeliColor? surfaceDimColorDark,
    String? fontFamily,
    String? fontFamilyFallback,
    double? fontSize,
    double? lineHeight,
    double? letterSpacing,
    SkeliColor? textColor,
    SkeliColor? textColorLight,
    SkeliColor? textColorDark,
    SkeliColor? textSecondaryColor,
    SkeliColor? textSecondaryColorLight,
    SkeliColor? textSecondaryColorDark,
    SkeliColor? textDisabledColor,
    SkeliColor? textDisabledColorLight,
    SkeliColor? textDisabledColorDark,
    SkeliColor? textHintColor,
    SkeliColor? textHintColorLight,
    SkeliColor? textHintColorDark,
  }) {
    platform ??= TargetPlatform.android;
    switch (platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.iOS:
        skeliTapTargetSize ??= SkeliTapTargetSize.padded;
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        skeliTapTargetSize ??= SkeliTapTargetSize.shrinkwrap;
    }
    adaptions = adaptions ?? [];
    brightness = brightness ?? Brightness.light;
    primaryColor = primaryColor ?? SkeliColors.blue;
    primaryColorLight = primaryColorLight ?? SkeliColors.blue;
    primaryColorDark = primaryColorDark ?? SkeliColors.blue;
    secondaryColor = secondaryColor ?? SkeliColors.green;
    secondaryColorLight = secondaryColorLight ?? SkeliColors.green;
    secondaryColorDark = secondaryColorDark ?? SkeliColors.green;
    tertiaryColor = tertiaryColor ?? SkeliColors.yellow;
    tertiaryColorLight = tertiaryColorLight ?? SkeliColors.yellow;
    tertiaryColorDark = tertiaryColorDark ?? SkeliColors.yellow;
    errorColor = errorColor ?? SkeliColors.red;
    errorColorLight = errorColorLight ?? SkeliColors.red;
    errorColorDark = errorColorDark ?? SkeliColors.red;
    onPrimaryColor = onPrimaryColor ?? SkeliColors.white;
    onPrimaryColorLight = onPrimaryColorLight ?? SkeliColors.white;
    onPrimaryColorDark = onPrimaryColorDark ?? SkeliColors.white;
    onSecondaryColor = onSecondaryColor ?? SkeliColors.white;
    onSecondaryColorLight = onSecondaryColorLight ?? SkeliColors.white;
    onSecondaryColorDark = onSecondaryColorDark ?? SkeliColors.white;
    onTertiaryColor = onTertiaryColor ?? SkeliColors.white;
    onTertiaryColorLight = onTertiaryColorLight ?? SkeliColors.white;
    onTertiaryColorDark = onTertiaryColorDark ?? SkeliColors.white;
    onErrorColor = onErrorColor ?? SkeliColors.white;
    onErrorColorLight = onErrorColorLight ?? SkeliColors.white;
    onErrorColorDark = onErrorColorDark ?? SkeliColors.white;
    backgroundColor = backgroundColor ?? SkeliColors.white;
    backgroundColorLight = backgroundColorLight ?? SkeliColors.white;
    backgroundColorDark = backgroundColorDark ?? SkeliColors.white;
    onBackgroundColor = onBackgroundColor ?? SkeliColors.black;
    onBackgroundColorLight = onBackgroundColorLight ?? SkeliColors.black;
    onBackgroundColorDark = onBackgroundColorDark ?? SkeliColors.black;
    surfaceColor = surfaceColor ?? SkeliColors.white;
    surfaceColorLight = surfaceColorLight ?? SkeliColors.white;
    surfaceColorDark = surfaceColorDark ?? SkeliColors.white;

    return SkeliThemeData.raw(
      platform: platform,
      skeliTapTargetSize: skeliTapTargetSize,
      adaptions: adaptions,
      brightness: brightness,
      primaryColor: primaryColor,
      primaryColorLight: primaryColorLight,
      primaryColorDark: primaryColorDark,
      secondaryColor: secondaryColor,
      secondaryColorLight: secondaryColorLight,
      secondaryColorDark: secondaryColorDark,
      tertiaryColor: tertiaryColor,
      tertiaryColorLight: tertiaryColorLight,
      tertiaryColorDark: tertiaryColorDark,
      errorColor: errorColor,
      errorColorLight: errorColorLight,
      errorColorDark: errorColorDark,
      onPrimaryColor: onPrimaryColor,
      onPrimaryColorLight: onPrimaryColorLight,
      onPrimaryColorDark: onPrimaryColorDark,
      onSecondaryColor: onSecondaryColor,
      onSecondaryColorLight: onSecondaryColorLight,
      onSecondaryColorDark: onSecondaryColorDark,
      onTertiaryColor: onTertiaryColor,
      onTertiaryColorLight: onTertiaryColorLight,
      onTertiaryColorDark: onTertiaryColorDark,
      onErrorColor: onErrorColor,
      onErrorColorLight: onErrorColorLight,
      onErrorColorDark: onErrorColorDark,
      backgroundColor: backgroundColor,
      backgroundColorLight: backgroundColorLight,
      backgroundColorDark: backgroundColorDark,
      onBackgroundColor: onBackgroundColor,
      onBackgroundColorLight: onBackgroundColorLight,
      onBackgroundColorDark: onBackgroundColorDark,
      surfaceColor: surfaceColor,
      surfaceColorLight: surfaceColorLight,
      surfaceColorDark: surfaceColorDark,
      surfaceBrightColor: surfaceBrightColor,
      surfaceBrightColorLight: surfaceBrightColorLight,
      surfaceBrightColorDark: surfaceBrightColorDark,
      surfaceDimColor: surfaceDimColor,
      surfaceDimColorLight: surfaceDimColorLight,
      surfaceDimColorDark: surfaceDimColorDark,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      fontSize: fontSize,
      lineHeight: lineHeight,
      letterSpacing: letterSpacing,
      textColor: textColor,
      textColorLight: textColorLight,
      textColorDark: textColorDark,
      textSecondaryColor: textSecondaryColor,
      textSecondaryColorLight: textSecondaryColorLight,
      textSecondaryColorDark: textSecondaryColorDark,
      textDisabledColor: textDisabledColor,
      textDisabledColorLight: textDisabledColorLight,
      textDisabledColorDark: textDisabledColorDark,
      textHintColor: textHintColor,
      textHintColorLight: textHintColorLight,
      textHintColorDark: textHintColorDark,
    );
  }

  SkeliThemeData.raw({
    required this.platform,
    required this.skeliTapTargetSize,
    required this.adaptions,
    required this.brightness,
    required this.primaryColor,
    required this.primaryColorLight,
    required this.primaryColorDark,
    required this.secondaryColor,
    required this.secondaryColorLight,
    required this.secondaryColorDark,
    required this.tertiaryColor,
    required this.tertiaryColorLight,
    required this.tertiaryColorDark,
    required this.errorColor,
    required this.errorColorLight,
    required this.errorColorDark,
    required this.onPrimaryColor,
    required this.onPrimaryColorLight,
    required this.onPrimaryColorDark,
    required this.onSecondaryColor,
    required this.onSecondaryColorLight,
    required this.onSecondaryColorDark,
    required this.onTertiaryColor,
    required this.onTertiaryColorLight,
    required this.onTertiaryColorDark,
    required this.onErrorColor,
    required this.onErrorColorLight,
    required this.onErrorColorDark,
    required this.backgroundColor,
    required this.backgroundColorLight,
    required this.backgroundColorDark,
    required this.onBackgroundColor,
    required this.onBackgroundColorLight,
    required this.onBackgroundColorDark,
    required this.surfaceColor,
    required this.surfaceColorLight,
    required this.surfaceColorDark,
    required this.surfaceBrightColor,
    required this.surfaceBrightColorLight,
    required this.surfaceBrightColorDark,
    required this.surfaceDimColor,
    required this.surfaceDimColorLight,
    required this.surfaceDimColorDark,
    required this.fontFamily,
    required this.fontFamilyFallback,
    required this.fontSize,
    required this.lineHeight,
    required this.letterSpacing,
    required this.textColor,
    required this.textColorLight,
    required this.textColorDark,
    required this.textSecondaryColor,
    required this.textSecondaryColorLight,
    required this.textSecondaryColorDark,
    required this.textDisabledColor,
    required this.textDisabledColorLight,
    required this.textDisabledColorDark,
    required this.textHintColor,
    required this.textHintColorLight,
    required this.textHintColorDark,
  });

  final TargetPlatform? platform;
  final SkeliTapTargetSize? skeliTapTargetSize;
  final Iterable<Adaption<Object>>? adaptions;
  final Brightness? brightness;
  final SkeliColor? primaryColor;
  final SkeliColor? primaryColorLight;
  final SkeliColor? primaryColorDark;
  final SkeliColor? secondaryColor;
  final SkeliColor? secondaryColorLight;
  final SkeliColor? secondaryColorDark;
  final SkeliColor? tertiaryColor;
  final SkeliColor? tertiaryColorLight;
  final SkeliColor? tertiaryColorDark;
  final SkeliColor? errorColor;
  final SkeliColor? errorColorLight;
  final SkeliColor? errorColorDark;
  final SkeliColor? onPrimaryColor;
  final SkeliColor? onPrimaryColorLight;
  final SkeliColor? onPrimaryColorDark;
  final SkeliColor? onSecondaryColor;
  final SkeliColor? onSecondaryColorLight;
  final SkeliColor? onSecondaryColorDark;
  final SkeliColor? onTertiaryColor;
  final SkeliColor? onTertiaryColorLight;
  final SkeliColor? onTertiaryColorDark;
  final SkeliColor? onErrorColor;
  final SkeliColor? onErrorColorLight;
  final SkeliColor? onErrorColorDark;
  final SkeliColor? backgroundColor;
  final SkeliColor? backgroundColorLight;
  final SkeliColor? backgroundColorDark;
  final SkeliColor? onBackgroundColor;
  final SkeliColor? onBackgroundColorLight;
  final SkeliColor? onBackgroundColorDark;
  final SkeliColor? surfaceColor;
  final SkeliColor? surfaceColorLight;
  final SkeliColor? surfaceColorDark;
  final SkeliColor? surfaceBrightColor;
  final SkeliColor? surfaceBrightColorLight;
  final SkeliColor? surfaceBrightColorDark;
  final SkeliColor? surfaceDimColor;
  final SkeliColor? surfaceDimColorLight;
  final SkeliColor? surfaceDimColorDark;
  final String? fontFamily;
  final String? fontFamilyFallback;
  final double? fontSize;
  final double? lineHeight;
  final double? letterSpacing;
  final SkeliColor? textColor;
  final SkeliColor? textColorLight;
  final SkeliColor? textColorDark;
  final SkeliColor? textSecondaryColor;
  final SkeliColor? textSecondaryColorLight;
  final SkeliColor? textSecondaryColorDark;
  final SkeliColor? textDisabledColor;
  final SkeliColor? textDisabledColorLight;
  final SkeliColor? textDisabledColorDark;
  final SkeliColor? textHintColor;
  final SkeliColor? textHintColorLight;
  final SkeliColor? textHintColorDark;
}
