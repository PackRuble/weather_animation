import 'dart:ui';

import 'package:flex_color_scheme/flex_color_scheme.dart';

extension ColorHex on Color {
  String get hexCode {
    return value32bit.toRadixString(16).toUpperCase().padLeft(8, '0');
  }

  String get hex {
    return '#${value32bit.toRadixString(16).toUpperCase().padLeft(8, '0').substring(2)}';
  }

  String get hexMaterial {
    return '0x${value32bit.toRadixString(16).padLeft(8, '0')}';
  }
}
