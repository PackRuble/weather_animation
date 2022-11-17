import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'configs.freezed.dart';
part 'configs.g.dart';

// ignore_for_file: invalid_annotation_target

/// ```shell
/// flutter pub run build_runner build json_serializable
/// ```

/// TODO:
/// расположить в порядке важности

/// Convert [Color] to/from json.
class ColorSerializer implements JsonConverter<Color, String> {
  const ColorSerializer();

  @override
  Color fromJson(String json) => Color(int.parse(json));

  @override
  String toJson(Color color) => color.value.toString();
}

/// Represents all weather configurations.
abstract class WeatherConfig {
  const WeatherConfig();
  Map<String, dynamic> toJson();
}

/// Configuration of the sun.
@freezed
class SunConfig extends WeatherConfig with _$SunConfig {
  @JsonSerializable(converters: [ColorSerializer()])
  const factory SunConfig({
    /// The width of the sun (in pixels).
    @Default(360.0) double width,

    /// The sigma argument controls the size of the blur effect.
    ///
    /// It is the standard deviation of the Gaussian blur to apply. The value
    /// must be greater than zero. The sigma corresponds to very roughly half the
    /// radius of the effect in pixels.
    ///
    /// More: [MaskFilter.blur]
    @Default(13.0) double blurSigma,

    /// The style argument controls the kind of effect to draw; see BlurStyle.
    @JsonKey(ignore: true) @Default(BlurStyle.solid) BlurStyle blurStyle,

    /// The location of the sun on the screen. By default, the top left corner.
    /// Otherwise right.
    @Default(true) bool isLeftLocation,

    /// The color of the sun's core.
    @Default(Color.fromARGB(255, 255, 152, 0)) Color coreColor,

    /// The color of the middle ring of the sun.
    @Default(Color.fromARGB(255, 255, 238, 88)) Color midColor,

    /// The color of the outer ring of the sun.
    @Default(Color.fromARGB(255, 255, 167, 38)) Color outColor,

    /// Time of animation of the middle ring of the sun (in milliseconds).
    @Default(1500) int animMidMill,

    /// Time of animation of the outer ring of the sun (in milliseconds).
    @Default(1500) int animOutMill,
  }) = _SunConfig;

  factory SunConfig.fromJson(Map<String, dynamic> json) =>
      _$SunConfigFromJson(json);
}

/// Configuration of the Snow.
@freezed
class SnowConfig extends WeatherConfig with _$SnowConfig {
  @JsonSerializable(converters: [ColorSerializer()])
  @Assert('waveRangeMin > 0', 'waveRangeMin must be greater than 0')
  @Assert('waveRangeMax >= waveRangeMin',
      'waveRangeMax must be greater than waveRangeMin')
  // todo testing more and add more assets...

  const factory SnowConfig({
    /// Number of snowflakes.
    @Default(50) int count,

    /// Snowflake size.
    @Default(20.0) double size,

    /// Snowflake color.
    @Default(Color.fromARGB(179, 255, 255, 255)) Color color,

    /// Snowflake icon. You can use a custom widget [widgetSnowflake].
    @JsonKey(ignore: true) @Default(Icons.ac_unit_rounded) IconData icon,

    /// Specify the snowflake widget. In this case, the fields [sizeSnowflake],
    /// [snowColor] and [iconDataSnowflake] be ignored.
    @JsonKey(ignore: true) Widget? widgetSnowflake,

    /// The X-axis zone where the snowflakes start to fall (in pixels).
    @Default(30.0) double areaXStart,

    /// The X-axis zone where the snowflakes end to fall (in pixels).
    @Default(220.0) double areaXEnd,

    /// The Y-axis zone where the snowflakes start to fall (in pixels).
    @Default(200.0) double areaYStart,

    /// The Y-axis zone where the snowflakes end to fall (in pixels).
    @Default(620.0) double areaYEnd,

    /// Minimum deviation from the direction of snowflake fall (in pixels).
    @Default(20.0) double waveRangeMin,

    /// Maximum deviation from the direction of snowflake fall (in pixels).
    @Default(110.0) double waveRangeMax,

    /// Minimum wave effect duration time (in seconds).
    @Default(5) int waveMinSec,

    /// Maximum wave effect duration time (in seconds).
    @Default(20) int waveMaxSec,

    /// An parametric animation easing curve. Specify to create a wave effect.
    @Default(Curves.easeInOutSine) @JsonKey(ignore: true) Curve waveCurve,

    /// An parametric animation easing curve. Specify how fast the snowflakes will
    /// disappear.
    @Default(Curves.easeInCirc) @JsonKey(ignore: true) Curve fadeCurve,

    /// Minimum snowflake fall time (in seconds).
    @Default(10) int fallMinSec,

    /// Maximum snowflake fall time (in seconds).
    @Default(60) int fallMaxSec,
  }) = _SnowflakeConfig;

  factory SnowConfig.fromJson(Map<String, dynamic> json) =>
      _$SnowConfigFromJson(json);
}

/// Configuration of the Cloud.
@freezed
class CloudConfig extends WeatherConfig with _$CloudConfig {
  @JsonSerializable(converters: [ColorSerializer()])
  const factory CloudConfig({
    /// Cloud size.
    @Default(250.0) double size,

    /// The color of the cloud.
    @Default(Color.fromARGB(179, 255, 255, 255)) Color color,

    /// Cloud icon. You can use a custom widget [widgetCloud].
    @Default(Icons.cloud_rounded) @JsonKey(ignore: true) IconData icon,

    /// Specify the cloud widget. In this case, the fields [icon] and
    /// [color] be ignored.
    @JsonKey(ignore: true) Widget? widgetCloud,

    /// The coordinate of cloud displacement along the x-axis (in pixels).
    @Default(20.0) double x,

    /// The coordinate of cloud displacement along the x-axis (in pixels).
    @Default(0.0) double y,

    /// The scale factor of the widget at the beginning of the animation.
    @Default(1.0) double scaleBegin,

    /// The scale factor of the widget at the end of the animation.
    @Default(1.1) double scaleEnd,

    /// Animation curve for [ScaleTransition].
    @Default(Curves.fastOutSlowIn) @JsonKey(ignore: true) Curve scaleCurve,

    /// Offset of the widget along the X-axis during the slide animation (in pixels).
    @Default(11.0) double slideX,

    /// Offset of the widget along the Y-axis during the slide animation (in pixels).
    @Default(0.0) double slideY,

    /// Shift duration (in milliseconds).
    @Default(2000) int slideDurMill,

    /// Animation curve for [SlideTransition].
    @Default(Curves.fastOutSlowIn) @JsonKey(ignore: true) Curve slideCurve,
  }) = _CloudConfig;

  factory CloudConfig.fromJson(Map<String, dynamic> json) =>
      _$CloudConfigFromJson(json);
}

/// Configuration of the Rain.
@freezed
class RainConfig extends WeatherConfig with _$RainConfig {
  @JsonSerializable(converters: [ColorSerializer()])
  const factory RainConfig({
    /// The number of raindrops.
    @Default(20) int count,

    /// The color of a raindrop.
    @Default(Color.fromARGB(153, 120, 144, 156)) Color color,

    /// Raindrop length.
    @Default(16.0) double lengthDrop,

    /// Raindrop width.
    @Default(5.0) double widthDrop,

    /// Rounded drop ends. Otherwise, the ends be square.
    @Default(true) bool isRoundedEndsDrop,

    /// Specify the cloud widget. In this case, the fields [count] and
    /// [color], [lengthDrop], [widthDrop], and []  be ignored.
    @JsonKey(ignore: true) Widget? widgetRainDrop,

    /// Minimum duration time of the fall effect (in milliseconds).
    @Default(500) int fallRangeMinDurMill,

    /// Maximum duration time of the fall effect (in milliseconds).
    @Default(1500) int fallRangeMaxDurMill,

    /// The X-axis zone where start to fall (in pixels).
    @Default(55.0) double areaXStart,

    /// The X-axis zone where end to fall (in pixels).
    @Default(215.0) double areaXEnd,

    /// The Y-axis zone where to fall (in pixels).
    @Default(215.0) double areaYStart,

    /// The Y-axis zone where end to fall (in pixels).
    @Default(620.0) double areaYEnd,

    /// Offset of the widget along the X-axis during the slide animation (in pixels).
    @Default(2.0) double slideX,

    /// Offset of the widget along the Y-axis during the slide animation (in pixels).
    @Default(0.0) double slideY,

    /// Shift duration (in milliseconds).
    @Default(2000) int slideDurMill,

    /// Animation curve for [SlideTransition].
    @Default(Curves.fastOutSlowIn) @JsonKey(ignore: true) Curve slideCurve,
    @Default(Curves.easeInQuad) @JsonKey(ignore: true) Curve fallCurve,
    @Default(Curves.easeInExpo) @JsonKey(ignore: true) Curve fadeCurve,
  }) = _RainConfig;

  factory RainConfig.fromJson(Map<String, dynamic> json) =>
      _$RainConfigFromJson(json);
}

/// Configuration of the Thunder.
@freezed
class ThunderConfig extends WeatherConfig with _$ThunderConfig {
  @JsonSerializable(converters: [ColorSerializer()])
  const factory ThunderConfig({
    @Default(10.0) double thunderWidth,
    @Default(Color.fromARGB(153, 255, 238, 88)) Color color,
    @Default(50) int flashStartMill,
    @Default(300) int flashEndMill,
    @Default(50) int pauseStartMill,
    @Default(6000) int pauseEndMill,
    @Default(BlurStyle.solid) @JsonKey(ignore: true) BlurStyle blurStyle,
    @Default(10.0) double blurSigma,
    @Default([Offset(110, 210), Offset(120, 240)])
    @JsonKey(ignore: true)
        List<Offset> points,
  }) = _ThunderConfig;

  factory ThunderConfig.fromJson(Map<String, dynamic> json) =>
      _$ThunderConfigFromJson(json);
}

/// Configuration of the Thunder.
@freezed
class WindConfig extends WeatherConfig with _$WindConfig {
  @JsonSerializable(converters: [ColorSerializer()])
  const factory WindConfig({
    @Default(50) int pauseStartMill,
    @Default(6000) int pauseEndMill,
    @Default(1000) int slideDurMill,
    @Default(0.0) double slideXStart,
    @Default(500.0) double slideXEnd,
    @Default(Color.fromARGB(255, 96, 125, 139)) Color color,
    @Default(8.0) double width,
    @Default(300.0) double y,
    @Default(15.0) double windGust,
    @Default(8.0) double blurSigma,
    @Default(BlurStyle.solid) @JsonKey(ignore: true) BlurStyle blurStyle,
  }) = _WindConfig;

  factory WindConfig.fromJson(Map<String, dynamic> json) =>
      _$WindConfigFromJson(json);
}
