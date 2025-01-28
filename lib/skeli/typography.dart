library;

import 'package:flutter/foundation.dart';

@immutable
class SkeliTypography with Diagnosticable {
  factory SkeliTypography({
    TargetPlatform? platform,
  }) {
    return SkeliTypography._withPlatform(platform);
  }

  factory SkeliTypography._withPlatform(TargetPlatform? platform) {
    platform ??= defaultTargetPlatform;
    return SkeliTypography(platform: platform);
  }
}
