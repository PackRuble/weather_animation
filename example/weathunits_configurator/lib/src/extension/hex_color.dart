import 'dart:ui';

extension ColorHex on Color {
  String get hexCode {
    return value.toRadixString(16).toUpperCase().padLeft(8, '0');
  }

  String get hex {
    return '#${value.toRadixString(16).toUpperCase().padLeft(8, '0').substring(2)}';
  }

  String get hexMaterial {
    return '0x${value.toRadixString(16).padLeft(8, '0')}';
  }
}
