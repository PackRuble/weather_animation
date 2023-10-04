import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/main_page.dart';

void main() => runApp(const ProviderScope(child: EditorScenesApp()));

// ignore_for_file: unreachable_from_main
enum SunConfigFields<T> {
  width<double>(0.0, 360.0, 2000.0),
  blurSigma<double>(0.0, 13.0, 36),
  isLeftLocation<bool>(true, false, false),
  coreColor<Color>(
    Color(0xFFFFFFFF),
    Color.fromARGB(255, 255, 152, 0),
    Color(0xFFFFFFFF),
  ),
  // midColor(...),
  // outColor(...),
  animMidMill<int>(0, 1500, 10000);
  // animOutMill(...);

  const SunConfigFields(this.minValue, this.defValue, this.maxValue);

  final T minValue;
  final T defValue;
  final T maxValue;

  // final double scale;
  // final String name;
  // final double/int/...(enum with types) typeValue;
}
