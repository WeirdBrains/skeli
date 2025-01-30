library;

import 'dart:ui';

class SkeliColor {
  final Color? color;
  final Color? lightColor;
  final Color? darkColor;

  const SkeliColor({
    this.color,
    this.lightColor,
    this.darkColor,
  });

  static SkeliColor fromColor(Color color) {
    return SkeliColor(
      color: color,
      lightColor: color.withAlpha(255 * 1),
      darkColor: color.withAlpha(255 * 9),
    );
  }
}

abstract final class SkeliColors {
  static const SkeliColor transparent = SkeliColor(color: Color(0x00000000));
  static const SkeliColor white = SkeliColor(color: Color(0xFFFFFFFF));
  static const SkeliColor black = SkeliColor(color: Color(0xFF000000));
  static const SkeliColor red = SkeliColor(color: Color(0xFFFF0000));
  static const SkeliColor green = SkeliColor(color: Color(0xFF00FF00));
  static const SkeliColor blue = SkeliColor(color: Color(0xFF0000FF));
  static const SkeliColor yellow = SkeliColor(color: Color(0xFFFFFF00));
  static const SkeliColor purple =
      SkeliColor(color: Color.fromARGB(255, 153, 0, 255));
  static const SkeliColor orange = SkeliColor(color: Color(0xFFFFA500));
  static const SkeliColor pink = SkeliColor(color: Color(0xFFFFC0CB));
  static const SkeliColor gray = SkeliColor(color: Color(0xFF808080));
  static const SkeliColor lightGray = SkeliColor(color: Color(0xFFD3D3D3));
  static const SkeliColor darkGray = SkeliColor(color: Color(0xFF404040));
  static const SkeliColor lightBlue = SkeliColor(color: Color(0xFFADD8E6));
  static const SkeliColor darkBlue = SkeliColor(color: Color(0xFF00008B));
  static const SkeliColor lightGreen = SkeliColor(color: Color(0xFF90EE90));
  static const SkeliColor darkGreen = SkeliColor(color: Color(0xFF006400));
  static const SkeliColor lightYellow = SkeliColor(color: Color(0xFFFFFFE0));
  static const SkeliColor darkYellow = SkeliColor(color: Color(0xFF8B8B00));
  static const SkeliColor lightPurple = SkeliColor(color: Color(0xFFE6E6FA));
  static const SkeliColor darkPurple = SkeliColor(color: Color(0xFF4B0082));
  static const SkeliColor lightOrange = SkeliColor(color: Color(0xFFFFDAB9));
  static const SkeliColor darkOrange = SkeliColor(color: Color(0xFF8B4513));
  static const SkeliColor lightPink = SkeliColor(color: Color(0xFFFFB6C1));
  static const SkeliColor darkPink = SkeliColor(color: Color(0xFF8B008B));
  static const SkeliColor lightBrown = SkeliColor(color: Color(0xFFDAA520));
  static const SkeliColor darkBrown = SkeliColor(color: Color(0xFF8B4513));
  static const SkeliColor lightCyan = SkeliColor(color: Color(0xFFE0FFFF));
  static const SkeliColor darkCyan = SkeliColor(color: Color(0xFF008B8B));
  static const SkeliColor lightMagenta = SkeliColor(color: Color(0xFFFF00FF));
  static const SkeliColor darkMagenta = SkeliColor(color: Color(0xFF8B008B));
  static const SkeliColor lightOlive = SkeliColor(color: Color(0xFF808000));
  static const SkeliColor darkOlive = SkeliColor(color: Color(0xFF556B2F));
  static const SkeliColor lightTeal = SkeliColor(color: Color(0xFF008080));
  static const SkeliColor darkTeal = SkeliColor(color: Color(0xFF008080));
  static const SkeliColor lightSilver = SkeliColor(color: Color(0xFFC0C0C0));
  static const SkeliColor darkSilver = SkeliColor(color: Color(0xFF808080));
  static const SkeliColor lightGold = SkeliColor(color: Color(0xFFDAA520));
  static const SkeliColor darkGold = SkeliColor(color: Color(0xFF8B8B00));
  static const SkeliColor lightMaroon = SkeliColor(color: Color(0xFFB03060));
  static const SkeliColor darkMaroon = SkeliColor(color: Color(0xFF800000));
  static const SkeliColor lightBeige = SkeliColor(color: Color(0xFFF5F5DC));
  static const SkeliColor darkBeige = SkeliColor(color: Color(0xFFD2B48C));
}
