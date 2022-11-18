import 'package:flex_color_scheme/flex_color_scheme.dart';

//ignore_for_file: avoid_classes_with_only_static_members

class AppTheme {
  static final theme = FlexThemeData.light(
    scheme: FlexScheme.amber,
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 20,
    appBarStyle: FlexAppBarStyle.primary,
    appBarOpacity: 0.95,
    tooltipsMatchBackground: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
  );
  static final darkTheme = FlexThemeData.dark(
    colors: FlexColor.schemes[FlexScheme.amber]!.light.defaultError
        .toDark(10, false),
    surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
    blendLevel: 10,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.90,
    tooltipsMatchBackground: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
  );
}
