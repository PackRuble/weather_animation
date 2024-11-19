import 'package:flex_color_scheme/flex_color_scheme.dart';

class AppTheme {
  const AppTheme._();

  static final theme = FlexThemeData.light(
    scheme: FlexScheme.amber,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 20,
    appBarStyle: FlexAppBarStyle.primary,
    appBarOpacity: 0.95,
    tooltipsMatchBackground: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
  );
  static final darkTheme = FlexThemeData.dark(
    colors: FlexColor.schemes[FlexScheme.amber]!.light.defaultError
        // ignore: avoid_redundant_argument_values
        .toDark(10, false),
    surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
    blendLevel: 10,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.90,
    tooltipsMatchBackground: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
  );
}
