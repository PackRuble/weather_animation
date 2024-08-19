// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/widgets.dart';

import '../weather_widgets/all_widgets.dart';
import '../wrapper_scene_widget.dart';

/// A variety of scenes of different weather phenomena.
enum WeatherScene {
  /// It's very sunny, it's hot, I'm going to be charcoal.
  ///
  /// Designation: hot, sunny, inclement
  /// Widgets: [SunWidget]
  scorchingSun,

  /// Sunset, evening, a little windy and cloudy. Nice weather.
  ///
  /// Designation: sunset, windy, cloudy, nice
  /// Widgets: [SunWidget], [WindWidget], [CloudWidget]
  sunset,

  /// It's winter, freezing, snowing and slightly warming in the sun. Its rays
  /// are not as strong as in summer, but still just as dear.
  ///
  /// Season: winter
  /// Designation: snowfall, frosty, snow clouds
  /// Widgets: [SunWidget], [SnowWidget], [CloudWidget]
  frosty,

  /// Typical winter, snow and clouds.
  ///
  /// Season: winter
  /// Designation: cold, snowfall, freezing, snow clouds
  /// Widgets: [SnowWidget], [CloudWidget]
  snowfall,

  /// Very moody weather. Outside it's about 0`C, it's raining, wet snow, strong
  /// wind and gray clouds.
  ///
  /// Season: autumn-winter
  /// Designation: raw, to patter, shower sleet, strong wind, foul
  /// Widgets: [RainWidget], [SnowWidget], [CloudWidget], [WindWidget]
  showerSleet,

  /// Terrifying weather. Rain pours down like a bucket, thunderstorms, strong
  /// winds and foggy skies. Don't feel like going out at all. It's dangerous.
  ///
  /// Season: spring, summer, autumn
  /// Designation: gale-force wind, thunderstorm, lightning, to darken
  /// Widgets: [WindWidget], [RainWidget], [ThunderWidget], [CloudWidget]
  stormy,

  /// The rain and the sky covered with clouds.
  ///
  /// Season: spring, summer, autumn
  /// Designation: rain, rain clouds, overcast, unpredictable
  /// Widgets: [RainWidget], [CloudWidget]
  rainyOvercast,

  /// Each weather element in this package is represented.
  weatherEvery,
  ;

  /// For advanced customization use [WrapperScene.weather] directly.
  Widget get sceneWidget => WrapperScene.weather(scene: this);
}
