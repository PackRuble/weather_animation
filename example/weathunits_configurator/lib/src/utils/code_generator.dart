import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/main_controller.dart';
import '../controllers/weathunits_controller.dart';
import '../model/models.dart';
import '../ui/configs/config_background_widget.dart';

// ignore_for_file: prefer_interpolation_to_compose_strings

String getCode(WidgetRef ref) {
  final units = ref.read(listWeathunitProvider);

  final StringBuffer unitsList = StringBuffer();
  for (final unit in units) {
    unitsList.write(
      switch (unit.type) {
            TypeWeather.sun => 'SunWidget(sunConfig',
            TypeWeather.rain => 'RainWidget(rainConfig',
            TypeWeather.thunder => 'ThunderWidget(thunderConfig',
            TypeWeather.snow => 'SnowWidget(snowConfig',
            TypeWeather.cloud => 'CloudWidget(cloudConfig',
            TypeWeather.wind => 'WindWidget(windConfig'
          } +
          ': ${unit.config},),\n',
    );
  }

  final StringBuffer colorsList = StringBuffer();
  for (final color in ref.read(backgroundColorsProvider)) {
    colorsList.write('Color.from('
        'alpha: ${color.a.toStringAsFixed(4)}, '
        'red: ${color.r.toStringAsFixed(4)}, '
        'green: ${color.g.toStringAsFixed(4)}, '
        'blue:${color.b.toStringAsFixed(4)}),'
        '\n');
  }

  ref.read(BackgroundColorsNotifier.isLeftCornerGradient);

  final isLeftCornerGradient =
      ref.read(BackgroundColorsNotifier.isLeftCornerGradient);
  final width = ref.read(MainController.widthCanvas);
  final height = ref.read(MainController.heightCanvas);

  final String content = '''
  return const WrapperScene(
    sizeCanvas: Size($width, $height),
    isLeftCornerGradient: $isLeftCornerGradient,
    colors: [
      $colorsList],
    children: [
      $unitsList],
  );
  ''';

  return content
      .replaceAllMapped(RegExp(r'IconData\([A-Z0-9+]*\)'), (match) {
        final code = match[0]!.split('+')[1].replaceFirst(')', '');
        return "IconData(${int.parse(code, radix: 16)}, fontFamily: 'MaterialIcons')";
      })
      .replaceAll('Color(', 'Color.from(')
      .replaceAll(', colorSpace: ColorSpace.sRGB)', ')');
}
