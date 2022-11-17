// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'configs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SunConfig _$SunConfigFromJson(Map<String, dynamic> json) {
  return _SunConfig.fromJson(json);
}

/// @nodoc
mixin _$SunConfig {
  /// The width of the sun (in pixels).
  double get width => throw _privateConstructorUsedError;

  /// The sigma argument controls the size of the blur effect.
  ///
  /// It is the standard deviation of the Gaussian blur to apply. The value
  /// must be greater than zero. The sigma corresponds to very roughly half the
  /// radius of the effect in pixels.
  ///
  /// More: [MaskFilter.blur]
  double get blurSigma => throw _privateConstructorUsedError;

  /// The style argument controls the kind of effect to draw; see BlurStyle.
  @JsonKey(ignore: true)
  BlurStyle get blurStyle => throw _privateConstructorUsedError;

  /// The location of the sun on the screen. By default, the top left corner.
  /// Otherwise right.
  bool get isLeftLocation => throw _privateConstructorUsedError;

  /// The color of the sun's core.
  Color get coreColor => throw _privateConstructorUsedError;

  /// The color of the middle ring of the sun.
  Color get midColor => throw _privateConstructorUsedError;

  /// The color of the outer ring of the sun.
  Color get outColor => throw _privateConstructorUsedError;

  /// Time of animation of the middle ring of the sun (in milliseconds).
  int get animMidMill => throw _privateConstructorUsedError;

  /// Time of animation of the outer ring of the sun (in milliseconds).
  int get animOutMill => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SunConfigCopyWith<SunConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SunConfigCopyWith<$Res> {
  factory $SunConfigCopyWith(SunConfig value, $Res Function(SunConfig) then) =
      _$SunConfigCopyWithImpl<$Res, SunConfig>;
  @useResult
  $Res call(
      {double width,
      double blurSigma,
      @JsonKey(ignore: true) BlurStyle blurStyle,
      bool isLeftLocation,
      Color coreColor,
      Color midColor,
      Color outColor,
      int animMidMill,
      int animOutMill});
}

/// @nodoc
class _$SunConfigCopyWithImpl<$Res, $Val extends SunConfig>
    implements $SunConfigCopyWith<$Res> {
  _$SunConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? blurSigma = null,
    Object? blurStyle = null,
    Object? isLeftLocation = null,
    Object? coreColor = null,
    Object? midColor = null,
    Object? outColor = null,
    Object? animMidMill = null,
    Object? animOutMill = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _value.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      blurStyle: null == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
      isLeftLocation: null == isLeftLocation
          ? _value.isLeftLocation
          : isLeftLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      coreColor: null == coreColor
          ? _value.coreColor
          : coreColor // ignore: cast_nullable_to_non_nullable
              as Color,
      midColor: null == midColor
          ? _value.midColor
          : midColor // ignore: cast_nullable_to_non_nullable
              as Color,
      outColor: null == outColor
          ? _value.outColor
          : outColor // ignore: cast_nullable_to_non_nullable
              as Color,
      animMidMill: null == animMidMill
          ? _value.animMidMill
          : animMidMill // ignore: cast_nullable_to_non_nullable
              as int,
      animOutMill: null == animOutMill
          ? _value.animOutMill
          : animOutMill // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SunConfigCopyWith<$Res> implements $SunConfigCopyWith<$Res> {
  factory _$$_SunConfigCopyWith(
          _$_SunConfig value, $Res Function(_$_SunConfig) then) =
      __$$_SunConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double width,
      double blurSigma,
      @JsonKey(ignore: true) BlurStyle blurStyle,
      bool isLeftLocation,
      Color coreColor,
      Color midColor,
      Color outColor,
      int animMidMill,
      int animOutMill});
}

/// @nodoc
class __$$_SunConfigCopyWithImpl<$Res>
    extends _$SunConfigCopyWithImpl<$Res, _$_SunConfig>
    implements _$$_SunConfigCopyWith<$Res> {
  __$$_SunConfigCopyWithImpl(
      _$_SunConfig _value, $Res Function(_$_SunConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? blurSigma = null,
    Object? blurStyle = null,
    Object? isLeftLocation = null,
    Object? coreColor = null,
    Object? midColor = null,
    Object? outColor = null,
    Object? animMidMill = null,
    Object? animOutMill = null,
  }) {
    return _then(_$_SunConfig(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _value.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      blurStyle: null == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
      isLeftLocation: null == isLeftLocation
          ? _value.isLeftLocation
          : isLeftLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      coreColor: null == coreColor
          ? _value.coreColor
          : coreColor // ignore: cast_nullable_to_non_nullable
              as Color,
      midColor: null == midColor
          ? _value.midColor
          : midColor // ignore: cast_nullable_to_non_nullable
              as Color,
      outColor: null == outColor
          ? _value.outColor
          : outColor // ignore: cast_nullable_to_non_nullable
              as Color,
      animMidMill: null == animMidMill
          ? _value.animMidMill
          : animMidMill // ignore: cast_nullable_to_non_nullable
              as int,
      animOutMill: null == animOutMill
          ? _value.animOutMill
          : animOutMill // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _$_SunConfig implements _SunConfig {
  const _$_SunConfig(
      {this.width = 360.0,
      this.blurSigma = 13.0,
      @JsonKey(ignore: true) this.blurStyle = BlurStyle.solid,
      this.isLeftLocation = true,
      this.coreColor = const Color.fromARGB(255, 255, 152, 0),
      this.midColor = const Color.fromARGB(255, 255, 238, 88),
      this.outColor = const Color.fromARGB(255, 255, 167, 38),
      this.animMidMill = 1500,
      this.animOutMill = 1500});

  factory _$_SunConfig.fromJson(Map<String, dynamic> json) =>
      _$$_SunConfigFromJson(json);

  /// The width of the sun (in pixels).
  @override
  @JsonKey()
  final double width;

  /// The sigma argument controls the size of the blur effect.
  ///
  /// It is the standard deviation of the Gaussian blur to apply. The value
  /// must be greater than zero. The sigma corresponds to very roughly half the
  /// radius of the effect in pixels.
  ///
  /// More: [MaskFilter.blur]
  @override
  @JsonKey()
  final double blurSigma;

  /// The style argument controls the kind of effect to draw; see BlurStyle.
  @override
  @JsonKey(ignore: true)
  final BlurStyle blurStyle;

  /// The location of the sun on the screen. By default, the top left corner.
  /// Otherwise right.
  @override
  @JsonKey()
  final bool isLeftLocation;

  /// The color of the sun's core.
  @override
  @JsonKey()
  final Color coreColor;

  /// The color of the middle ring of the sun.
  @override
  @JsonKey()
  final Color midColor;

  /// The color of the outer ring of the sun.
  @override
  @JsonKey()
  final Color outColor;

  /// Time of animation of the middle ring of the sun (in milliseconds).
  @override
  @JsonKey()
  final int animMidMill;

  /// Time of animation of the outer ring of the sun (in milliseconds).
  @override
  @JsonKey()
  final int animOutMill;

  @override
  String toString() {
    return 'SunConfig(width: $width, blurSigma: $blurSigma, blurStyle: $blurStyle, isLeftLocation: $isLeftLocation, coreColor: $coreColor, midColor: $midColor, outColor: $outColor, animMidMill: $animMidMill, animOutMill: $animOutMill)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SunConfig &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.blurSigma, blurSigma) ||
                other.blurSigma == blurSigma) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle) &&
            (identical(other.isLeftLocation, isLeftLocation) ||
                other.isLeftLocation == isLeftLocation) &&
            (identical(other.coreColor, coreColor) ||
                other.coreColor == coreColor) &&
            (identical(other.midColor, midColor) ||
                other.midColor == midColor) &&
            (identical(other.outColor, outColor) ||
                other.outColor == outColor) &&
            (identical(other.animMidMill, animMidMill) ||
                other.animMidMill == animMidMill) &&
            (identical(other.animOutMill, animOutMill) ||
                other.animOutMill == animOutMill));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, blurSigma, blurStyle,
      isLeftLocation, coreColor, midColor, outColor, animMidMill, animOutMill);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SunConfigCopyWith<_$_SunConfig> get copyWith =>
      __$$_SunConfigCopyWithImpl<_$_SunConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SunConfigToJson(
      this,
    );
  }
}

abstract class _SunConfig implements SunConfig {
  const factory _SunConfig(
      {final double width,
      final double blurSigma,
      @JsonKey(ignore: true) final BlurStyle blurStyle,
      final bool isLeftLocation,
      final Color coreColor,
      final Color midColor,
      final Color outColor,
      final int animMidMill,
      final int animOutMill}) = _$_SunConfig;

  factory _SunConfig.fromJson(Map<String, dynamic> json) =
      _$_SunConfig.fromJson;

  @override

  /// The width of the sun (in pixels).
  double get width;
  @override

  /// The sigma argument controls the size of the blur effect.
  ///
  /// It is the standard deviation of the Gaussian blur to apply. The value
  /// must be greater than zero. The sigma corresponds to very roughly half the
  /// radius of the effect in pixels.
  ///
  /// More: [MaskFilter.blur]
  double get blurSigma;
  @override

  /// The style argument controls the kind of effect to draw; see BlurStyle.
  @JsonKey(ignore: true)
  BlurStyle get blurStyle;
  @override

  /// The location of the sun on the screen. By default, the top left corner.
  /// Otherwise right.
  bool get isLeftLocation;
  @override

  /// The color of the sun's core.
  Color get coreColor;
  @override

  /// The color of the middle ring of the sun.
  Color get midColor;
  @override

  /// The color of the outer ring of the sun.
  Color get outColor;
  @override

  /// Time of animation of the middle ring of the sun (in milliseconds).
  int get animMidMill;
  @override

  /// Time of animation of the outer ring of the sun (in milliseconds).
  int get animOutMill;
  @override
  @JsonKey(ignore: true)
  _$$_SunConfigCopyWith<_$_SunConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

SnowConfig _$SnowConfigFromJson(Map<String, dynamic> json) {
  return _SnowflakeConfig.fromJson(json);
}

/// @nodoc
mixin _$SnowConfig {
  /// Number of snowflakes.
  int get count => throw _privateConstructorUsedError;

  /// Snowflake size.
  double get size => throw _privateConstructorUsedError;

  /// Snowflake color.
  Color get color => throw _privateConstructorUsedError;

  /// Snowflake icon. You can use a custom widget [widgetSnowflake].
  @JsonKey(ignore: true)
  IconData get icon => throw _privateConstructorUsedError;

  /// Specify the snowflake widget. In this case, the fields [sizeSnowflake],
  /// [snowColor] and [iconDataSnowflake] be ignored.
  @JsonKey(ignore: true)
  Widget? get widgetSnowflake => throw _privateConstructorUsedError;

  /// The X-axis zone where the snowflakes start to fall (in pixels).
  double get areaXStart => throw _privateConstructorUsedError;

  /// The X-axis zone where the snowflakes end to fall (in pixels).
  double get areaXEnd => throw _privateConstructorUsedError;

  /// The Y-axis zone where the snowflakes start to fall (in pixels).
  double get areaYStart => throw _privateConstructorUsedError;

  /// The Y-axis zone where the snowflakes end to fall (in pixels).
  double get areaYEnd => throw _privateConstructorUsedError;

  /// Minimum deviation from the direction of snowflake fall (in pixels).
  double get waveRangeMin => throw _privateConstructorUsedError;

  /// Maximum deviation from the direction of snowflake fall (in pixels).
  double get waveRangeMax => throw _privateConstructorUsedError;

  /// Minimum wave effect duration time (in seconds).
  int get waveMinSec => throw _privateConstructorUsedError;

  /// Maximum wave effect duration time (in seconds).
  int get waveMaxSec => throw _privateConstructorUsedError;

  /// An parametric animation easing curve. Specify to create a wave effect.
  @JsonKey(ignore: true)
  Curve get waveCurve => throw _privateConstructorUsedError;

  /// An parametric animation easing curve. Specify how fast the snowflakes will
  /// disappear.
  @JsonKey(ignore: true)
  Curve get fadeCurve => throw _privateConstructorUsedError;

  /// Minimum snowflake fall time (in seconds).
  int get fallMinSec => throw _privateConstructorUsedError;

  /// Maximum snowflake fall time (in seconds).
  int get fallMaxSec => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnowConfigCopyWith<SnowConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnowConfigCopyWith<$Res> {
  factory $SnowConfigCopyWith(
          SnowConfig value, $Res Function(SnowConfig) then) =
      _$SnowConfigCopyWithImpl<$Res, SnowConfig>;
  @useResult
  $Res call(
      {int count,
      double size,
      Color color,
      @JsonKey(ignore: true) IconData icon,
      @JsonKey(ignore: true) Widget? widgetSnowflake,
      double areaXStart,
      double areaXEnd,
      double areaYStart,
      double areaYEnd,
      double waveRangeMin,
      double waveRangeMax,
      int waveMinSec,
      int waveMaxSec,
      @JsonKey(ignore: true) Curve waveCurve,
      @JsonKey(ignore: true) Curve fadeCurve,
      int fallMinSec,
      int fallMaxSec});
}

/// @nodoc
class _$SnowConfigCopyWithImpl<$Res, $Val extends SnowConfig>
    implements $SnowConfigCopyWith<$Res> {
  _$SnowConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? size = null,
    Object? color = null,
    Object? icon = null,
    Object? widgetSnowflake = freezed,
    Object? areaXStart = null,
    Object? areaXEnd = null,
    Object? areaYStart = null,
    Object? areaYEnd = null,
    Object? waveRangeMin = null,
    Object? waveRangeMax = null,
    Object? waveMinSec = null,
    Object? waveMaxSec = null,
    Object? waveCurve = null,
    Object? fadeCurve = null,
    Object? fallMinSec = null,
    Object? fallMaxSec = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      widgetSnowflake: freezed == widgetSnowflake
          ? _value.widgetSnowflake
          : widgetSnowflake // ignore: cast_nullable_to_non_nullable
              as Widget?,
      areaXStart: null == areaXStart
          ? _value.areaXStart
          : areaXStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaXEnd: null == areaXEnd
          ? _value.areaXEnd
          : areaXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      areaYStart: null == areaYStart
          ? _value.areaYStart
          : areaYStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaYEnd: null == areaYEnd
          ? _value.areaYEnd
          : areaYEnd // ignore: cast_nullable_to_non_nullable
              as double,
      waveRangeMin: null == waveRangeMin
          ? _value.waveRangeMin
          : waveRangeMin // ignore: cast_nullable_to_non_nullable
              as double,
      waveRangeMax: null == waveRangeMax
          ? _value.waveRangeMax
          : waveRangeMax // ignore: cast_nullable_to_non_nullable
              as double,
      waveMinSec: null == waveMinSec
          ? _value.waveMinSec
          : waveMinSec // ignore: cast_nullable_to_non_nullable
              as int,
      waveMaxSec: null == waveMaxSec
          ? _value.waveMaxSec
          : waveMaxSec // ignore: cast_nullable_to_non_nullable
              as int,
      waveCurve: null == waveCurve
          ? _value.waveCurve
          : waveCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fadeCurve: null == fadeCurve
          ? _value.fadeCurve
          : fadeCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fallMinSec: null == fallMinSec
          ? _value.fallMinSec
          : fallMinSec // ignore: cast_nullable_to_non_nullable
              as int,
      fallMaxSec: null == fallMaxSec
          ? _value.fallMaxSec
          : fallMaxSec // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SnowflakeConfigCopyWith<$Res>
    implements $SnowConfigCopyWith<$Res> {
  factory _$$_SnowflakeConfigCopyWith(
          _$_SnowflakeConfig value, $Res Function(_$_SnowflakeConfig) then) =
      __$$_SnowflakeConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      double size,
      Color color,
      @JsonKey(ignore: true) IconData icon,
      @JsonKey(ignore: true) Widget? widgetSnowflake,
      double areaXStart,
      double areaXEnd,
      double areaYStart,
      double areaYEnd,
      double waveRangeMin,
      double waveRangeMax,
      int waveMinSec,
      int waveMaxSec,
      @JsonKey(ignore: true) Curve waveCurve,
      @JsonKey(ignore: true) Curve fadeCurve,
      int fallMinSec,
      int fallMaxSec});
}

/// @nodoc
class __$$_SnowflakeConfigCopyWithImpl<$Res>
    extends _$SnowConfigCopyWithImpl<$Res, _$_SnowflakeConfig>
    implements _$$_SnowflakeConfigCopyWith<$Res> {
  __$$_SnowflakeConfigCopyWithImpl(
      _$_SnowflakeConfig _value, $Res Function(_$_SnowflakeConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? size = null,
    Object? color = null,
    Object? icon = null,
    Object? widgetSnowflake = freezed,
    Object? areaXStart = null,
    Object? areaXEnd = null,
    Object? areaYStart = null,
    Object? areaYEnd = null,
    Object? waveRangeMin = null,
    Object? waveRangeMax = null,
    Object? waveMinSec = null,
    Object? waveMaxSec = null,
    Object? waveCurve = null,
    Object? fadeCurve = null,
    Object? fallMinSec = null,
    Object? fallMaxSec = null,
  }) {
    return _then(_$_SnowflakeConfig(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      widgetSnowflake: freezed == widgetSnowflake
          ? _value.widgetSnowflake
          : widgetSnowflake // ignore: cast_nullable_to_non_nullable
              as Widget?,
      areaXStart: null == areaXStart
          ? _value.areaXStart
          : areaXStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaXEnd: null == areaXEnd
          ? _value.areaXEnd
          : areaXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      areaYStart: null == areaYStart
          ? _value.areaYStart
          : areaYStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaYEnd: null == areaYEnd
          ? _value.areaYEnd
          : areaYEnd // ignore: cast_nullable_to_non_nullable
              as double,
      waveRangeMin: null == waveRangeMin
          ? _value.waveRangeMin
          : waveRangeMin // ignore: cast_nullable_to_non_nullable
              as double,
      waveRangeMax: null == waveRangeMax
          ? _value.waveRangeMax
          : waveRangeMax // ignore: cast_nullable_to_non_nullable
              as double,
      waveMinSec: null == waveMinSec
          ? _value.waveMinSec
          : waveMinSec // ignore: cast_nullable_to_non_nullable
              as int,
      waveMaxSec: null == waveMaxSec
          ? _value.waveMaxSec
          : waveMaxSec // ignore: cast_nullable_to_non_nullable
              as int,
      waveCurve: null == waveCurve
          ? _value.waveCurve
          : waveCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fadeCurve: null == fadeCurve
          ? _value.fadeCurve
          : fadeCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fallMinSec: null == fallMinSec
          ? _value.fallMinSec
          : fallMinSec // ignore: cast_nullable_to_non_nullable
              as int,
      fallMaxSec: null == fallMaxSec
          ? _value.fallMaxSec
          : fallMaxSec // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _$_SnowflakeConfig implements _SnowflakeConfig {
  const _$_SnowflakeConfig(
      {this.count = 50,
      this.size = 20.0,
      this.color = const Color.fromARGB(179, 255, 255, 255),
      @JsonKey(ignore: true) this.icon = Icons.ac_unit,
      @JsonKey(ignore: true) this.widgetSnowflake,
      this.areaXStart = 30.0,
      this.areaXEnd = 220.0,
      this.areaYStart = 200.0,
      this.areaYEnd = 620.0,
      this.waveRangeMin = 20.0,
      this.waveRangeMax = 110.0,
      this.waveMinSec = 5,
      this.waveMaxSec = 20,
      @JsonKey(ignore: true) this.waveCurve = Curves.easeInOutSine,
      @JsonKey(ignore: true) this.fadeCurve = Curves.easeInCirc,
      this.fallMinSec = 10,
      this.fallMaxSec = 60})
      : assert(waveRangeMin > 0, 'waveRangeMin must be greater than 0'),
        assert(waveRangeMax >= waveRangeMin,
            'waveRangeMax must be greater than waveRangeMin');

  factory _$_SnowflakeConfig.fromJson(Map<String, dynamic> json) =>
      _$$_SnowflakeConfigFromJson(json);

  /// Number of snowflakes.
  @override
  @JsonKey()
  final int count;

  /// Snowflake size.
  @override
  @JsonKey()
  final double size;

  /// Snowflake color.
  @override
  @JsonKey()
  final Color color;

  /// Snowflake icon. You can use a custom widget [widgetSnowflake].
  @override
  @JsonKey(ignore: true)
  final IconData icon;

  /// Specify the snowflake widget. In this case, the fields [sizeSnowflake],
  /// [snowColor] and [iconDataSnowflake] be ignored.
  @override
  @JsonKey(ignore: true)
  final Widget? widgetSnowflake;

  /// The X-axis zone where the snowflakes start to fall (in pixels).
  @override
  @JsonKey()
  final double areaXStart;

  /// The X-axis zone where the snowflakes end to fall (in pixels).
  @override
  @JsonKey()
  final double areaXEnd;

  /// The Y-axis zone where the snowflakes start to fall (in pixels).
  @override
  @JsonKey()
  final double areaYStart;

  /// The Y-axis zone where the snowflakes end to fall (in pixels).
  @override
  @JsonKey()
  final double areaYEnd;

  /// Minimum deviation from the direction of snowflake fall (in pixels).
  @override
  @JsonKey()
  final double waveRangeMin;

  /// Maximum deviation from the direction of snowflake fall (in pixels).
  @override
  @JsonKey()
  final double waveRangeMax;

  /// Minimum wave effect duration time (in seconds).
  @override
  @JsonKey()
  final int waveMinSec;

  /// Maximum wave effect duration time (in seconds).
  @override
  @JsonKey()
  final int waveMaxSec;

  /// An parametric animation easing curve. Specify to create a wave effect.
  @override
  @JsonKey(ignore: true)
  final Curve waveCurve;

  /// An parametric animation easing curve. Specify how fast the snowflakes will
  /// disappear.
  @override
  @JsonKey(ignore: true)
  final Curve fadeCurve;

  /// Minimum snowflake fall time (in seconds).
  @override
  @JsonKey()
  final int fallMinSec;

  /// Maximum snowflake fall time (in seconds).
  @override
  @JsonKey()
  final int fallMaxSec;

  @override
  String toString() {
    return 'SnowConfig(count: $count, size: $size, color: $color, icon: $icon, widgetSnowflake: $widgetSnowflake, areaXStart: $areaXStart, areaXEnd: $areaXEnd, areaYStart: $areaYStart, areaYEnd: $areaYEnd, waveRangeMin: $waveRangeMin, waveRangeMax: $waveRangeMax, waveMinSec: $waveMinSec, waveMaxSec: $waveMaxSec, waveCurve: $waveCurve, fadeCurve: $fadeCurve, fallMinSec: $fallMinSec, fallMaxSec: $fallMaxSec)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnowflakeConfig &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.widgetSnowflake, widgetSnowflake) ||
                other.widgetSnowflake == widgetSnowflake) &&
            (identical(other.areaXStart, areaXStart) ||
                other.areaXStart == areaXStart) &&
            (identical(other.areaXEnd, areaXEnd) ||
                other.areaXEnd == areaXEnd) &&
            (identical(other.areaYStart, areaYStart) ||
                other.areaYStart == areaYStart) &&
            (identical(other.areaYEnd, areaYEnd) ||
                other.areaYEnd == areaYEnd) &&
            (identical(other.waveRangeMin, waveRangeMin) ||
                other.waveRangeMin == waveRangeMin) &&
            (identical(other.waveRangeMax, waveRangeMax) ||
                other.waveRangeMax == waveRangeMax) &&
            (identical(other.waveMinSec, waveMinSec) ||
                other.waveMinSec == waveMinSec) &&
            (identical(other.waveMaxSec, waveMaxSec) ||
                other.waveMaxSec == waveMaxSec) &&
            (identical(other.waveCurve, waveCurve) ||
                other.waveCurve == waveCurve) &&
            (identical(other.fadeCurve, fadeCurve) ||
                other.fadeCurve == fadeCurve) &&
            (identical(other.fallMinSec, fallMinSec) ||
                other.fallMinSec == fallMinSec) &&
            (identical(other.fallMaxSec, fallMaxSec) ||
                other.fallMaxSec == fallMaxSec));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      size,
      color,
      icon,
      widgetSnowflake,
      areaXStart,
      areaXEnd,
      areaYStart,
      areaYEnd,
      waveRangeMin,
      waveRangeMax,
      waveMinSec,
      waveMaxSec,
      waveCurve,
      fadeCurve,
      fallMinSec,
      fallMaxSec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnowflakeConfigCopyWith<_$_SnowflakeConfig> get copyWith =>
      __$$_SnowflakeConfigCopyWithImpl<_$_SnowflakeConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnowflakeConfigToJson(
      this,
    );
  }
}

abstract class _SnowflakeConfig implements SnowConfig {
  const factory _SnowflakeConfig(
      {final int count,
      final double size,
      final Color color,
      @JsonKey(ignore: true) final IconData icon,
      @JsonKey(ignore: true) final Widget? widgetSnowflake,
      final double areaXStart,
      final double areaXEnd,
      final double areaYStart,
      final double areaYEnd,
      final double waveRangeMin,
      final double waveRangeMax,
      final int waveMinSec,
      final int waveMaxSec,
      @JsonKey(ignore: true) final Curve waveCurve,
      @JsonKey(ignore: true) final Curve fadeCurve,
      final int fallMinSec,
      final int fallMaxSec}) = _$_SnowflakeConfig;

  factory _SnowflakeConfig.fromJson(Map<String, dynamic> json) =
      _$_SnowflakeConfig.fromJson;

  @override

  /// Number of snowflakes.
  int get count;
  @override

  /// Snowflake size.
  double get size;
  @override

  /// Snowflake color.
  Color get color;
  @override

  /// Snowflake icon. You can use a custom widget [widgetSnowflake].
  @JsonKey(ignore: true)
  IconData get icon;
  @override

  /// Specify the snowflake widget. In this case, the fields [sizeSnowflake],
  /// [snowColor] and [iconDataSnowflake] be ignored.
  @JsonKey(ignore: true)
  Widget? get widgetSnowflake;
  @override

  /// The X-axis zone where the snowflakes start to fall (in pixels).
  double get areaXStart;
  @override

  /// The X-axis zone where the snowflakes end to fall (in pixels).
  double get areaXEnd;
  @override

  /// The Y-axis zone where the snowflakes start to fall (in pixels).
  double get areaYStart;
  @override

  /// The Y-axis zone where the snowflakes end to fall (in pixels).
  double get areaYEnd;
  @override

  /// Minimum deviation from the direction of snowflake fall (in pixels).
  double get waveRangeMin;
  @override

  /// Maximum deviation from the direction of snowflake fall (in pixels).
  double get waveRangeMax;
  @override

  /// Minimum wave effect duration time (in seconds).
  int get waveMinSec;
  @override

  /// Maximum wave effect duration time (in seconds).
  int get waveMaxSec;
  @override

  /// An parametric animation easing curve. Specify to create a wave effect.
  @JsonKey(ignore: true)
  Curve get waveCurve;
  @override

  /// An parametric animation easing curve. Specify how fast the snowflakes will
  /// disappear.
  @JsonKey(ignore: true)
  Curve get fadeCurve;
  @override

  /// Minimum snowflake fall time (in seconds).
  int get fallMinSec;
  @override

  /// Maximum snowflake fall time (in seconds).
  int get fallMaxSec;
  @override
  @JsonKey(ignore: true)
  _$$_SnowflakeConfigCopyWith<_$_SnowflakeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

CloudConfig _$CloudConfigFromJson(Map<String, dynamic> json) {
  return _CloudConfig.fromJson(json);
}

/// @nodoc
mixin _$CloudConfig {
  /// Cloud size.
  double get size => throw _privateConstructorUsedError;

  /// The color of the cloud.
  Color get color => throw _privateConstructorUsedError;

  /// Cloud icon. You can use a custom widget [widgetCloud].
  @JsonKey(ignore: true)
  IconData get icon => throw _privateConstructorUsedError;

  /// Specify the cloud widget. In this case, the fields [icon] and
  /// [color] be ignored.
  @JsonKey(ignore: true)
  Widget? get widgetCloud => throw _privateConstructorUsedError;

  /// The coordinate of cloud displacement along the x-axis (in pixels).
  double get x => throw _privateConstructorUsedError;

  /// The coordinate of cloud displacement along the x-axis (in pixels).
  double get y => throw _privateConstructorUsedError;

  /// The scale factor of the widget at the beginning of the animation.
  double get scaleBegin => throw _privateConstructorUsedError;

  /// The scale factor of the widget at the end of the animation.
  double get scaleEnd => throw _privateConstructorUsedError;

  /// Animation curve for [ScaleTransition].
  @JsonKey(ignore: true)
  Curve get scaleCurve => throw _privateConstructorUsedError;

  /// Offset of the widget along the X-axis during the slide animation (in pixels).
  double get slideX => throw _privateConstructorUsedError;

  /// Offset of the widget along the Y-axis during the slide animation (in pixels).
  double get slideY => throw _privateConstructorUsedError;

  /// Shift duration (in milliseconds).
  int get slideDurMill => throw _privateConstructorUsedError;

  /// Animation curve for [SlideTransition].
  @JsonKey(ignore: true)
  Curve get slideCurve => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudConfigCopyWith<CloudConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudConfigCopyWith<$Res> {
  factory $CloudConfigCopyWith(
          CloudConfig value, $Res Function(CloudConfig) then) =
      _$CloudConfigCopyWithImpl<$Res, CloudConfig>;
  @useResult
  $Res call(
      {double size,
      Color color,
      @JsonKey(ignore: true) IconData icon,
      @JsonKey(ignore: true) Widget? widgetCloud,
      double x,
      double y,
      double scaleBegin,
      double scaleEnd,
      @JsonKey(ignore: true) Curve scaleCurve,
      double slideX,
      double slideY,
      int slideDurMill,
      @JsonKey(ignore: true) Curve slideCurve});
}

/// @nodoc
class _$CloudConfigCopyWithImpl<$Res, $Val extends CloudConfig>
    implements $CloudConfigCopyWith<$Res> {
  _$CloudConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? color = null,
    Object? icon = null,
    Object? widgetCloud = freezed,
    Object? x = null,
    Object? y = null,
    Object? scaleBegin = null,
    Object? scaleEnd = null,
    Object? scaleCurve = null,
    Object? slideX = null,
    Object? slideY = null,
    Object? slideDurMill = null,
    Object? slideCurve = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      widgetCloud: freezed == widgetCloud
          ? _value.widgetCloud
          : widgetCloud // ignore: cast_nullable_to_non_nullable
              as Widget?,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      scaleBegin: null == scaleBegin
          ? _value.scaleBegin
          : scaleBegin // ignore: cast_nullable_to_non_nullable
              as double,
      scaleEnd: null == scaleEnd
          ? _value.scaleEnd
          : scaleEnd // ignore: cast_nullable_to_non_nullable
              as double,
      scaleCurve: null == scaleCurve
          ? _value.scaleCurve
          : scaleCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      slideX: null == slideX
          ? _value.slideX
          : slideX // ignore: cast_nullable_to_non_nullable
              as double,
      slideY: null == slideY
          ? _value.slideY
          : slideY // ignore: cast_nullable_to_non_nullable
              as double,
      slideDurMill: null == slideDurMill
          ? _value.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideCurve: null == slideCurve
          ? _value.slideCurve
          : slideCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CloudConfigCopyWith<$Res>
    implements $CloudConfigCopyWith<$Res> {
  factory _$$_CloudConfigCopyWith(
          _$_CloudConfig value, $Res Function(_$_CloudConfig) then) =
      __$$_CloudConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double size,
      Color color,
      @JsonKey(ignore: true) IconData icon,
      @JsonKey(ignore: true) Widget? widgetCloud,
      double x,
      double y,
      double scaleBegin,
      double scaleEnd,
      @JsonKey(ignore: true) Curve scaleCurve,
      double slideX,
      double slideY,
      int slideDurMill,
      @JsonKey(ignore: true) Curve slideCurve});
}

/// @nodoc
class __$$_CloudConfigCopyWithImpl<$Res>
    extends _$CloudConfigCopyWithImpl<$Res, _$_CloudConfig>
    implements _$$_CloudConfigCopyWith<$Res> {
  __$$_CloudConfigCopyWithImpl(
      _$_CloudConfig _value, $Res Function(_$_CloudConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? color = null,
    Object? icon = null,
    Object? widgetCloud = freezed,
    Object? x = null,
    Object? y = null,
    Object? scaleBegin = null,
    Object? scaleEnd = null,
    Object? scaleCurve = null,
    Object? slideX = null,
    Object? slideY = null,
    Object? slideDurMill = null,
    Object? slideCurve = null,
  }) {
    return _then(_$_CloudConfig(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      widgetCloud: freezed == widgetCloud
          ? _value.widgetCloud
          : widgetCloud // ignore: cast_nullable_to_non_nullable
              as Widget?,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      scaleBegin: null == scaleBegin
          ? _value.scaleBegin
          : scaleBegin // ignore: cast_nullable_to_non_nullable
              as double,
      scaleEnd: null == scaleEnd
          ? _value.scaleEnd
          : scaleEnd // ignore: cast_nullable_to_non_nullable
              as double,
      scaleCurve: null == scaleCurve
          ? _value.scaleCurve
          : scaleCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      slideX: null == slideX
          ? _value.slideX
          : slideX // ignore: cast_nullable_to_non_nullable
              as double,
      slideY: null == slideY
          ? _value.slideY
          : slideY // ignore: cast_nullable_to_non_nullable
              as double,
      slideDurMill: null == slideDurMill
          ? _value.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideCurve: null == slideCurve
          ? _value.slideCurve
          : slideCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _$_CloudConfig implements _CloudConfig {
  const _$_CloudConfig(
      {this.size = 250.0,
      this.color = const Color.fromARGB(179, 255, 255, 255),
      @JsonKey(ignore: true) this.icon = Icons.cloud_rounded,
      @JsonKey(ignore: true) this.widgetCloud,
      this.x = 20.0,
      this.y = 150.0,
      this.scaleBegin = 1.0,
      this.scaleEnd = 1.1,
      @JsonKey(ignore: true) this.scaleCurve = Curves.fastOutSlowIn,
      this.slideX = 11.0,
      this.slideY = 0.0,
      this.slideDurMill = 2000,
      @JsonKey(ignore: true) this.slideCurve = Curves.fastOutSlowIn});

  factory _$_CloudConfig.fromJson(Map<String, dynamic> json) =>
      _$$_CloudConfigFromJson(json);

  /// Cloud size.
  @override
  @JsonKey()
  final double size;

  /// The color of the cloud.
  @override
  @JsonKey()
  final Color color;

  /// Cloud icon. You can use a custom widget [widgetCloud].
  @override
  @JsonKey(ignore: true)
  final IconData icon;

  /// Specify the cloud widget. In this case, the fields [icon] and
  /// [color] be ignored.
  @override
  @JsonKey(ignore: true)
  final Widget? widgetCloud;

  /// The coordinate of cloud displacement along the x-axis (in pixels).
  @override
  @JsonKey()
  final double x;

  /// The coordinate of cloud displacement along the x-axis (in pixels).
  @override
  @JsonKey()
  final double y;

  /// The scale factor of the widget at the beginning of the animation.
  @override
  @JsonKey()
  final double scaleBegin;

  /// The scale factor of the widget at the end of the animation.
  @override
  @JsonKey()
  final double scaleEnd;

  /// Animation curve for [ScaleTransition].
  @override
  @JsonKey(ignore: true)
  final Curve scaleCurve;

  /// Offset of the widget along the X-axis during the slide animation (in pixels).
  @override
  @JsonKey()
  final double slideX;

  /// Offset of the widget along the Y-axis during the slide animation (in pixels).
  @override
  @JsonKey()
  final double slideY;

  /// Shift duration (in milliseconds).
  @override
  @JsonKey()
  final int slideDurMill;

  /// Animation curve for [SlideTransition].
  @override
  @JsonKey(ignore: true)
  final Curve slideCurve;

  @override
  String toString() {
    return 'CloudConfig(size: $size, color: $color, icon: $icon, widgetCloud: $widgetCloud, x: $x, y: $y, scaleBegin: $scaleBegin, scaleEnd: $scaleEnd, scaleCurve: $scaleCurve, slideX: $slideX, slideY: $slideY, slideDurMill: $slideDurMill, slideCurve: $slideCurve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CloudConfig &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.widgetCloud, widgetCloud) ||
                other.widgetCloud == widgetCloud) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.scaleBegin, scaleBegin) ||
                other.scaleBegin == scaleBegin) &&
            (identical(other.scaleEnd, scaleEnd) ||
                other.scaleEnd == scaleEnd) &&
            (identical(other.scaleCurve, scaleCurve) ||
                other.scaleCurve == scaleCurve) &&
            (identical(other.slideX, slideX) || other.slideX == slideX) &&
            (identical(other.slideY, slideY) || other.slideY == slideY) &&
            (identical(other.slideDurMill, slideDurMill) ||
                other.slideDurMill == slideDurMill) &&
            (identical(other.slideCurve, slideCurve) ||
                other.slideCurve == slideCurve));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      size,
      color,
      icon,
      widgetCloud,
      x,
      y,
      scaleBegin,
      scaleEnd,
      scaleCurve,
      slideX,
      slideY,
      slideDurMill,
      slideCurve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CloudConfigCopyWith<_$_CloudConfig> get copyWith =>
      __$$_CloudConfigCopyWithImpl<_$_CloudConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CloudConfigToJson(
      this,
    );
  }
}

abstract class _CloudConfig implements CloudConfig {
  const factory _CloudConfig(
      {final double size,
      final Color color,
      @JsonKey(ignore: true) final IconData icon,
      @JsonKey(ignore: true) final Widget? widgetCloud,
      final double x,
      final double y,
      final double scaleBegin,
      final double scaleEnd,
      @JsonKey(ignore: true) final Curve scaleCurve,
      final double slideX,
      final double slideY,
      final int slideDurMill,
      @JsonKey(ignore: true) final Curve slideCurve}) = _$_CloudConfig;

  factory _CloudConfig.fromJson(Map<String, dynamic> json) =
      _$_CloudConfig.fromJson;

  @override

  /// Cloud size.
  double get size;
  @override

  /// The color of the cloud.
  Color get color;
  @override

  /// Cloud icon. You can use a custom widget [widgetCloud].
  @JsonKey(ignore: true)
  IconData get icon;
  @override

  /// Specify the cloud widget. In this case, the fields [icon] and
  /// [color] be ignored.
  @JsonKey(ignore: true)
  Widget? get widgetCloud;
  @override

  /// The coordinate of cloud displacement along the x-axis (in pixels).
  double get x;
  @override

  /// The coordinate of cloud displacement along the x-axis (in pixels).
  double get y;
  @override

  /// The scale factor of the widget at the beginning of the animation.
  double get scaleBegin;
  @override

  /// The scale factor of the widget at the end of the animation.
  double get scaleEnd;
  @override

  /// Animation curve for [ScaleTransition].
  @JsonKey(ignore: true)
  Curve get scaleCurve;
  @override

  /// Offset of the widget along the X-axis during the slide animation (in pixels).
  double get slideX;
  @override

  /// Offset of the widget along the Y-axis during the slide animation (in pixels).
  double get slideY;
  @override

  /// Shift duration (in milliseconds).
  int get slideDurMill;
  @override

  /// Animation curve for [SlideTransition].
  @JsonKey(ignore: true)
  Curve get slideCurve;
  @override
  @JsonKey(ignore: true)
  _$$_CloudConfigCopyWith<_$_CloudConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

RainConfig _$RainConfigFromJson(Map<String, dynamic> json) {
  return _RainConfig.fromJson(json);
}

/// @nodoc
mixin _$RainConfig {
  /// The number of raindrops.
  int get count => throw _privateConstructorUsedError;

  /// The color of a raindrop.
  Color get color => throw _privateConstructorUsedError;

  /// Raindrop length.
  double get lengthDrop => throw _privateConstructorUsedError;

  /// Raindrop width.
  double get widthDrop => throw _privateConstructorUsedError;

  /// Rounded drop ends. Otherwise, the ends be square.
  bool get isRoundedEndsDrop => throw _privateConstructorUsedError;

  /// Specify the cloud widget. In this case, the fields [count] and
  /// [color], [lengthDrop], [widthDrop], and []  be ignored.
  @JsonKey(ignore: true)
  Widget? get widgetRainDrop => throw _privateConstructorUsedError;

  /// Minimum duration time of the fall effect (in milliseconds).
  int get fallRangeMinDurMill => throw _privateConstructorUsedError;

  /// Maximum duration time of the fall effect (in milliseconds).
  int get fallRangeMaxDurMill => throw _privateConstructorUsedError;

  /// The X-axis zone where start to fall (in pixels).
  double get areaXStart => throw _privateConstructorUsedError;

  /// The X-axis zone where end to fall (in pixels).
  double get areaXEnd => throw _privateConstructorUsedError;

  /// The Y-axis zone where to fall (in pixels).
  double get areaYStart => throw _privateConstructorUsedError;

  /// The Y-axis zone where end to fall (in pixels).
  double get areaYEnd => throw _privateConstructorUsedError;

  /// Offset of the widget along the X-axis during the slide animation (in pixels).
  double get slideX => throw _privateConstructorUsedError;

  /// Offset of the widget along the Y-axis during the slide animation (in pixels).
  double get slideY => throw _privateConstructorUsedError;

  /// Shift duration (in milliseconds).
  int get slideDurMill => throw _privateConstructorUsedError;

  /// Animation curve for [SlideTransition].
  @JsonKey(ignore: true)
  Curve get slideCurve => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Curve get fallCurve => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Curve get fadeCurve => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainConfigCopyWith<RainConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainConfigCopyWith<$Res> {
  factory $RainConfigCopyWith(
          RainConfig value, $Res Function(RainConfig) then) =
      _$RainConfigCopyWithImpl<$Res, RainConfig>;
  @useResult
  $Res call(
      {int count,
      Color color,
      double lengthDrop,
      double widthDrop,
      bool isRoundedEndsDrop,
      @JsonKey(ignore: true) Widget? widgetRainDrop,
      int fallRangeMinDurMill,
      int fallRangeMaxDurMill,
      double areaXStart,
      double areaXEnd,
      double areaYStart,
      double areaYEnd,
      double slideX,
      double slideY,
      int slideDurMill,
      @JsonKey(ignore: true) Curve slideCurve,
      @JsonKey(ignore: true) Curve fallCurve,
      @JsonKey(ignore: true) Curve fadeCurve});
}

/// @nodoc
class _$RainConfigCopyWithImpl<$Res, $Val extends RainConfig>
    implements $RainConfigCopyWith<$Res> {
  _$RainConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? color = null,
    Object? lengthDrop = null,
    Object? widthDrop = null,
    Object? isRoundedEndsDrop = null,
    Object? widgetRainDrop = freezed,
    Object? fallRangeMinDurMill = null,
    Object? fallRangeMaxDurMill = null,
    Object? areaXStart = null,
    Object? areaXEnd = null,
    Object? areaYStart = null,
    Object? areaYEnd = null,
    Object? slideX = null,
    Object? slideY = null,
    Object? slideDurMill = null,
    Object? slideCurve = null,
    Object? fallCurve = null,
    Object? fadeCurve = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      lengthDrop: null == lengthDrop
          ? _value.lengthDrop
          : lengthDrop // ignore: cast_nullable_to_non_nullable
              as double,
      widthDrop: null == widthDrop
          ? _value.widthDrop
          : widthDrop // ignore: cast_nullable_to_non_nullable
              as double,
      isRoundedEndsDrop: null == isRoundedEndsDrop
          ? _value.isRoundedEndsDrop
          : isRoundedEndsDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      widgetRainDrop: freezed == widgetRainDrop
          ? _value.widgetRainDrop
          : widgetRainDrop // ignore: cast_nullable_to_non_nullable
              as Widget?,
      fallRangeMinDurMill: null == fallRangeMinDurMill
          ? _value.fallRangeMinDurMill
          : fallRangeMinDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      fallRangeMaxDurMill: null == fallRangeMaxDurMill
          ? _value.fallRangeMaxDurMill
          : fallRangeMaxDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      areaXStart: null == areaXStart
          ? _value.areaXStart
          : areaXStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaXEnd: null == areaXEnd
          ? _value.areaXEnd
          : areaXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      areaYStart: null == areaYStart
          ? _value.areaYStart
          : areaYStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaYEnd: null == areaYEnd
          ? _value.areaYEnd
          : areaYEnd // ignore: cast_nullable_to_non_nullable
              as double,
      slideX: null == slideX
          ? _value.slideX
          : slideX // ignore: cast_nullable_to_non_nullable
              as double,
      slideY: null == slideY
          ? _value.slideY
          : slideY // ignore: cast_nullable_to_non_nullable
              as double,
      slideDurMill: null == slideDurMill
          ? _value.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideCurve: null == slideCurve
          ? _value.slideCurve
          : slideCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fallCurve: null == fallCurve
          ? _value.fallCurve
          : fallCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fadeCurve: null == fadeCurve
          ? _value.fadeCurve
          : fadeCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RainConfigCopyWith<$Res>
    implements $RainConfigCopyWith<$Res> {
  factory _$$_RainConfigCopyWith(
          _$_RainConfig value, $Res Function(_$_RainConfig) then) =
      __$$_RainConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      Color color,
      double lengthDrop,
      double widthDrop,
      bool isRoundedEndsDrop,
      @JsonKey(ignore: true) Widget? widgetRainDrop,
      int fallRangeMinDurMill,
      int fallRangeMaxDurMill,
      double areaXStart,
      double areaXEnd,
      double areaYStart,
      double areaYEnd,
      double slideX,
      double slideY,
      int slideDurMill,
      @JsonKey(ignore: true) Curve slideCurve,
      @JsonKey(ignore: true) Curve fallCurve,
      @JsonKey(ignore: true) Curve fadeCurve});
}

/// @nodoc
class __$$_RainConfigCopyWithImpl<$Res>
    extends _$RainConfigCopyWithImpl<$Res, _$_RainConfig>
    implements _$$_RainConfigCopyWith<$Res> {
  __$$_RainConfigCopyWithImpl(
      _$_RainConfig _value, $Res Function(_$_RainConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? color = null,
    Object? lengthDrop = null,
    Object? widthDrop = null,
    Object? isRoundedEndsDrop = null,
    Object? widgetRainDrop = freezed,
    Object? fallRangeMinDurMill = null,
    Object? fallRangeMaxDurMill = null,
    Object? areaXStart = null,
    Object? areaXEnd = null,
    Object? areaYStart = null,
    Object? areaYEnd = null,
    Object? slideX = null,
    Object? slideY = null,
    Object? slideDurMill = null,
    Object? slideCurve = null,
    Object? fallCurve = null,
    Object? fadeCurve = null,
  }) {
    return _then(_$_RainConfig(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      lengthDrop: null == lengthDrop
          ? _value.lengthDrop
          : lengthDrop // ignore: cast_nullable_to_non_nullable
              as double,
      widthDrop: null == widthDrop
          ? _value.widthDrop
          : widthDrop // ignore: cast_nullable_to_non_nullable
              as double,
      isRoundedEndsDrop: null == isRoundedEndsDrop
          ? _value.isRoundedEndsDrop
          : isRoundedEndsDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      widgetRainDrop: freezed == widgetRainDrop
          ? _value.widgetRainDrop
          : widgetRainDrop // ignore: cast_nullable_to_non_nullable
              as Widget?,
      fallRangeMinDurMill: null == fallRangeMinDurMill
          ? _value.fallRangeMinDurMill
          : fallRangeMinDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      fallRangeMaxDurMill: null == fallRangeMaxDurMill
          ? _value.fallRangeMaxDurMill
          : fallRangeMaxDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      areaXStart: null == areaXStart
          ? _value.areaXStart
          : areaXStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaXEnd: null == areaXEnd
          ? _value.areaXEnd
          : areaXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      areaYStart: null == areaYStart
          ? _value.areaYStart
          : areaYStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaYEnd: null == areaYEnd
          ? _value.areaYEnd
          : areaYEnd // ignore: cast_nullable_to_non_nullable
              as double,
      slideX: null == slideX
          ? _value.slideX
          : slideX // ignore: cast_nullable_to_non_nullable
              as double,
      slideY: null == slideY
          ? _value.slideY
          : slideY // ignore: cast_nullable_to_non_nullable
              as double,
      slideDurMill: null == slideDurMill
          ? _value.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideCurve: null == slideCurve
          ? _value.slideCurve
          : slideCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fallCurve: null == fallCurve
          ? _value.fallCurve
          : fallCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fadeCurve: null == fadeCurve
          ? _value.fadeCurve
          : fadeCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _$_RainConfig implements _RainConfig {
  const _$_RainConfig(
      {this.count = 20,
      this.color = const Color.fromARGB(153, 120, 144, 156),
      this.lengthDrop = 16.0,
      this.widthDrop = 5.0,
      this.isRoundedEndsDrop = true,
      @JsonKey(ignore: true) this.widgetRainDrop,
      this.fallRangeMinDurMill = 500,
      this.fallRangeMaxDurMill = 1500,
      this.areaXStart = 55.0,
      this.areaXEnd = 215.0,
      this.areaYStart = 215.0,
      this.areaYEnd = 620.0,
      this.slideX = 2.0,
      this.slideY = 0.0,
      this.slideDurMill = 2000,
      @JsonKey(ignore: true) this.slideCurve = Curves.fastOutSlowIn,
      @JsonKey(ignore: true) this.fallCurve = Curves.easeInQuad,
      @JsonKey(ignore: true) this.fadeCurve = Curves.easeInExpo});

  factory _$_RainConfig.fromJson(Map<String, dynamic> json) =>
      _$$_RainConfigFromJson(json);

  /// The number of raindrops.
  @override
  @JsonKey()
  final int count;

  /// The color of a raindrop.
  @override
  @JsonKey()
  final Color color;

  /// Raindrop length.
  @override
  @JsonKey()
  final double lengthDrop;

  /// Raindrop width.
  @override
  @JsonKey()
  final double widthDrop;

  /// Rounded drop ends. Otherwise, the ends be square.
  @override
  @JsonKey()
  final bool isRoundedEndsDrop;

  /// Specify the cloud widget. In this case, the fields [count] and
  /// [color], [lengthDrop], [widthDrop], and []  be ignored.
  @override
  @JsonKey(ignore: true)
  final Widget? widgetRainDrop;

  /// Minimum duration time of the fall effect (in milliseconds).
  @override
  @JsonKey()
  final int fallRangeMinDurMill;

  /// Maximum duration time of the fall effect (in milliseconds).
  @override
  @JsonKey()
  final int fallRangeMaxDurMill;

  /// The X-axis zone where start to fall (in pixels).
  @override
  @JsonKey()
  final double areaXStart;

  /// The X-axis zone where end to fall (in pixels).
  @override
  @JsonKey()
  final double areaXEnd;

  /// The Y-axis zone where to fall (in pixels).
  @override
  @JsonKey()
  final double areaYStart;

  /// The Y-axis zone where end to fall (in pixels).
  @override
  @JsonKey()
  final double areaYEnd;

  /// Offset of the widget along the X-axis during the slide animation (in pixels).
  @override
  @JsonKey()
  final double slideX;

  /// Offset of the widget along the Y-axis during the slide animation (in pixels).
  @override
  @JsonKey()
  final double slideY;

  /// Shift duration (in milliseconds).
  @override
  @JsonKey()
  final int slideDurMill;

  /// Animation curve for [SlideTransition].
  @override
  @JsonKey(ignore: true)
  final Curve slideCurve;
  @override
  @JsonKey(ignore: true)
  final Curve fallCurve;
  @override
  @JsonKey(ignore: true)
  final Curve fadeCurve;

  @override
  String toString() {
    return 'RainConfig(count: $count, color: $color, lengthDrop: $lengthDrop, widthDrop: $widthDrop, isRoundedEndsDrop: $isRoundedEndsDrop, widgetRainDrop: $widgetRainDrop, fallRangeMinDurMill: $fallRangeMinDurMill, fallRangeMaxDurMill: $fallRangeMaxDurMill, areaXStart: $areaXStart, areaXEnd: $areaXEnd, areaYStart: $areaYStart, areaYEnd: $areaYEnd, slideX: $slideX, slideY: $slideY, slideDurMill: $slideDurMill, slideCurve: $slideCurve, fallCurve: $fallCurve, fadeCurve: $fadeCurve)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RainConfig &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.lengthDrop, lengthDrop) ||
                other.lengthDrop == lengthDrop) &&
            (identical(other.widthDrop, widthDrop) ||
                other.widthDrop == widthDrop) &&
            (identical(other.isRoundedEndsDrop, isRoundedEndsDrop) ||
                other.isRoundedEndsDrop == isRoundedEndsDrop) &&
            (identical(other.widgetRainDrop, widgetRainDrop) ||
                other.widgetRainDrop == widgetRainDrop) &&
            (identical(other.fallRangeMinDurMill, fallRangeMinDurMill) ||
                other.fallRangeMinDurMill == fallRangeMinDurMill) &&
            (identical(other.fallRangeMaxDurMill, fallRangeMaxDurMill) ||
                other.fallRangeMaxDurMill == fallRangeMaxDurMill) &&
            (identical(other.areaXStart, areaXStart) ||
                other.areaXStart == areaXStart) &&
            (identical(other.areaXEnd, areaXEnd) ||
                other.areaXEnd == areaXEnd) &&
            (identical(other.areaYStart, areaYStart) ||
                other.areaYStart == areaYStart) &&
            (identical(other.areaYEnd, areaYEnd) ||
                other.areaYEnd == areaYEnd) &&
            (identical(other.slideX, slideX) || other.slideX == slideX) &&
            (identical(other.slideY, slideY) || other.slideY == slideY) &&
            (identical(other.slideDurMill, slideDurMill) ||
                other.slideDurMill == slideDurMill) &&
            (identical(other.slideCurve, slideCurve) ||
                other.slideCurve == slideCurve) &&
            (identical(other.fallCurve, fallCurve) ||
                other.fallCurve == fallCurve) &&
            (identical(other.fadeCurve, fadeCurve) ||
                other.fadeCurve == fadeCurve));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      color,
      lengthDrop,
      widthDrop,
      isRoundedEndsDrop,
      widgetRainDrop,
      fallRangeMinDurMill,
      fallRangeMaxDurMill,
      areaXStart,
      areaXEnd,
      areaYStart,
      areaYEnd,
      slideX,
      slideY,
      slideDurMill,
      slideCurve,
      fallCurve,
      fadeCurve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RainConfigCopyWith<_$_RainConfig> get copyWith =>
      __$$_RainConfigCopyWithImpl<_$_RainConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RainConfigToJson(
      this,
    );
  }
}

abstract class _RainConfig implements RainConfig {
  const factory _RainConfig(
      {final int count,
      final Color color,
      final double lengthDrop,
      final double widthDrop,
      final bool isRoundedEndsDrop,
      @JsonKey(ignore: true) final Widget? widgetRainDrop,
      final int fallRangeMinDurMill,
      final int fallRangeMaxDurMill,
      final double areaXStart,
      final double areaXEnd,
      final double areaYStart,
      final double areaYEnd,
      final double slideX,
      final double slideY,
      final int slideDurMill,
      @JsonKey(ignore: true) final Curve slideCurve,
      @JsonKey(ignore: true) final Curve fallCurve,
      @JsonKey(ignore: true) final Curve fadeCurve}) = _$_RainConfig;

  factory _RainConfig.fromJson(Map<String, dynamic> json) =
      _$_RainConfig.fromJson;

  @override

  /// The number of raindrops.
  int get count;
  @override

  /// The color of a raindrop.
  Color get color;
  @override

  /// Raindrop length.
  double get lengthDrop;
  @override

  /// Raindrop width.
  double get widthDrop;
  @override

  /// Rounded drop ends. Otherwise, the ends be square.
  bool get isRoundedEndsDrop;
  @override

  /// Specify the cloud widget. In this case, the fields [count] and
  /// [color], [lengthDrop], [widthDrop], and []  be ignored.
  @JsonKey(ignore: true)
  Widget? get widgetRainDrop;
  @override

  /// Minimum duration time of the fall effect (in milliseconds).
  int get fallRangeMinDurMill;
  @override

  /// Maximum duration time of the fall effect (in milliseconds).
  int get fallRangeMaxDurMill;
  @override

  /// The X-axis zone where start to fall (in pixels).
  double get areaXStart;
  @override

  /// The X-axis zone where end to fall (in pixels).
  double get areaXEnd;
  @override

  /// The Y-axis zone where to fall (in pixels).
  double get areaYStart;
  @override

  /// The Y-axis zone where end to fall (in pixels).
  double get areaYEnd;
  @override

  /// Offset of the widget along the X-axis during the slide animation (in pixels).
  double get slideX;
  @override

  /// Offset of the widget along the Y-axis during the slide animation (in pixels).
  double get slideY;
  @override

  /// Shift duration (in milliseconds).
  int get slideDurMill;
  @override

  /// Animation curve for [SlideTransition].
  @JsonKey(ignore: true)
  Curve get slideCurve;
  @override
  @JsonKey(ignore: true)
  Curve get fallCurve;
  @override
  @JsonKey(ignore: true)
  Curve get fadeCurve;
  @override
  @JsonKey(ignore: true)
  _$$_RainConfigCopyWith<_$_RainConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

ThunderConfig _$ThunderConfigFromJson(Map<String, dynamic> json) {
  return _ThunderConfig.fromJson(json);
}

/// @nodoc
mixin _$ThunderConfig {
  double get thunderWidth => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  int get flashStartMill => throw _privateConstructorUsedError;
  int get flashEndMill => throw _privateConstructorUsedError;
  int get pauseStartMill => throw _privateConstructorUsedError;
  int get pauseEndMill => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  BlurStyle get blurStyle => throw _privateConstructorUsedError;
  double get blurSigma => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<Offset> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThunderConfigCopyWith<ThunderConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThunderConfigCopyWith<$Res> {
  factory $ThunderConfigCopyWith(
          ThunderConfig value, $Res Function(ThunderConfig) then) =
      _$ThunderConfigCopyWithImpl<$Res, ThunderConfig>;
  @useResult
  $Res call(
      {double thunderWidth,
      Color color,
      int flashStartMill,
      int flashEndMill,
      int pauseStartMill,
      int pauseEndMill,
      @JsonKey(ignore: true) BlurStyle blurStyle,
      double blurSigma,
      @JsonKey(ignore: true) List<Offset> points});
}

/// @nodoc
class _$ThunderConfigCopyWithImpl<$Res, $Val extends ThunderConfig>
    implements $ThunderConfigCopyWith<$Res> {
  _$ThunderConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thunderWidth = null,
    Object? color = null,
    Object? flashStartMill = null,
    Object? flashEndMill = null,
    Object? pauseStartMill = null,
    Object? pauseEndMill = null,
    Object? blurStyle = null,
    Object? blurSigma = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      thunderWidth: null == thunderWidth
          ? _value.thunderWidth
          : thunderWidth // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      flashStartMill: null == flashStartMill
          ? _value.flashStartMill
          : flashStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      flashEndMill: null == flashEndMill
          ? _value.flashEndMill
          : flashEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseStartMill: null == pauseStartMill
          ? _value.pauseStartMill
          : pauseStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseEndMill: null == pauseEndMill
          ? _value.pauseEndMill
          : pauseEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      blurStyle: null == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
      blurSigma: null == blurSigma
          ? _value.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThunderConfigCopyWith<$Res>
    implements $ThunderConfigCopyWith<$Res> {
  factory _$$_ThunderConfigCopyWith(
          _$_ThunderConfig value, $Res Function(_$_ThunderConfig) then) =
      __$$_ThunderConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double thunderWidth,
      Color color,
      int flashStartMill,
      int flashEndMill,
      int pauseStartMill,
      int pauseEndMill,
      @JsonKey(ignore: true) BlurStyle blurStyle,
      double blurSigma,
      @JsonKey(ignore: true) List<Offset> points});
}

/// @nodoc
class __$$_ThunderConfigCopyWithImpl<$Res>
    extends _$ThunderConfigCopyWithImpl<$Res, _$_ThunderConfig>
    implements _$$_ThunderConfigCopyWith<$Res> {
  __$$_ThunderConfigCopyWithImpl(
      _$_ThunderConfig _value, $Res Function(_$_ThunderConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thunderWidth = null,
    Object? color = null,
    Object? flashStartMill = null,
    Object? flashEndMill = null,
    Object? pauseStartMill = null,
    Object? pauseEndMill = null,
    Object? blurStyle = null,
    Object? blurSigma = null,
    Object? points = null,
  }) {
    return _then(_$_ThunderConfig(
      thunderWidth: null == thunderWidth
          ? _value.thunderWidth
          : thunderWidth // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      flashStartMill: null == flashStartMill
          ? _value.flashStartMill
          : flashStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      flashEndMill: null == flashEndMill
          ? _value.flashEndMill
          : flashEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseStartMill: null == pauseStartMill
          ? _value.pauseStartMill
          : pauseStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseEndMill: null == pauseEndMill
          ? _value.pauseEndMill
          : pauseEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      blurStyle: null == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
      blurSigma: null == blurSigma
          ? _value.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _$_ThunderConfig implements _ThunderConfig {
  const _$_ThunderConfig(
      {this.thunderWidth = 10.0,
      this.color = const Color.fromARGB(153, 255, 238, 88),
      this.flashStartMill = 50,
      this.flashEndMill = 300,
      this.pauseStartMill = 50,
      this.pauseEndMill = 6000,
      @JsonKey(ignore: true) this.blurStyle = BlurStyle.solid,
      this.blurSigma = 10.0,
      @JsonKey(ignore: true) final List<Offset> points = const [
        Offset(110, 210),
        Offset(120, 240)
      ]})
      : _points = points;

  factory _$_ThunderConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ThunderConfigFromJson(json);

  @override
  @JsonKey()
  final double thunderWidth;
  @override
  @JsonKey()
  final Color color;
  @override
  @JsonKey()
  final int flashStartMill;
  @override
  @JsonKey()
  final int flashEndMill;
  @override
  @JsonKey()
  final int pauseStartMill;
  @override
  @JsonKey()
  final int pauseEndMill;
  @override
  @JsonKey(ignore: true)
  final BlurStyle blurStyle;
  @override
  @JsonKey()
  final double blurSigma;
  final List<Offset> _points;
  @override
  @JsonKey(ignore: true)
  List<Offset> get points {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'ThunderConfig(thunderWidth: $thunderWidth, color: $color, flashStartMill: $flashStartMill, flashEndMill: $flashEndMill, pauseStartMill: $pauseStartMill, pauseEndMill: $pauseEndMill, blurStyle: $blurStyle, blurSigma: $blurSigma, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThunderConfig &&
            (identical(other.thunderWidth, thunderWidth) ||
                other.thunderWidth == thunderWidth) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.flashStartMill, flashStartMill) ||
                other.flashStartMill == flashStartMill) &&
            (identical(other.flashEndMill, flashEndMill) ||
                other.flashEndMill == flashEndMill) &&
            (identical(other.pauseStartMill, pauseStartMill) ||
                other.pauseStartMill == pauseStartMill) &&
            (identical(other.pauseEndMill, pauseEndMill) ||
                other.pauseEndMill == pauseEndMill) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle) &&
            (identical(other.blurSigma, blurSigma) ||
                other.blurSigma == blurSigma) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thunderWidth,
      color,
      flashStartMill,
      flashEndMill,
      pauseStartMill,
      pauseEndMill,
      blurStyle,
      blurSigma,
      const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThunderConfigCopyWith<_$_ThunderConfig> get copyWith =>
      __$$_ThunderConfigCopyWithImpl<_$_ThunderConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThunderConfigToJson(
      this,
    );
  }
}

abstract class _ThunderConfig implements ThunderConfig {
  const factory _ThunderConfig(
      {final double thunderWidth,
      final Color color,
      final int flashStartMill,
      final int flashEndMill,
      final int pauseStartMill,
      final int pauseEndMill,
      @JsonKey(ignore: true) final BlurStyle blurStyle,
      final double blurSigma,
      @JsonKey(ignore: true) final List<Offset> points}) = _$_ThunderConfig;

  factory _ThunderConfig.fromJson(Map<String, dynamic> json) =
      _$_ThunderConfig.fromJson;

  @override
  double get thunderWidth;
  @override
  Color get color;
  @override
  int get flashStartMill;
  @override
  int get flashEndMill;
  @override
  int get pauseStartMill;
  @override
  int get pauseEndMill;
  @override
  @JsonKey(ignore: true)
  BlurStyle get blurStyle;
  @override
  double get blurSigma;
  @override
  @JsonKey(ignore: true)
  List<Offset> get points;
  @override
  @JsonKey(ignore: true)
  _$$_ThunderConfigCopyWith<_$_ThunderConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

WindConfig _$WindConfigFromJson(Map<String, dynamic> json) {
  return _WindConfig.fromJson(json);
}

/// @nodoc
mixin _$WindConfig {
  int get pauseStartMill => throw _privateConstructorUsedError;
  int get pauseEndMill => throw _privateConstructorUsedError;
  int get slideDurMill => throw _privateConstructorUsedError;
  double get slideXStart => throw _privateConstructorUsedError;
  double get slideXEnd => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get windGust => throw _privateConstructorUsedError;
  double get blurSigma => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  BlurStyle get blurStyle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindConfigCopyWith<WindConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindConfigCopyWith<$Res> {
  factory $WindConfigCopyWith(
          WindConfig value, $Res Function(WindConfig) then) =
      _$WindConfigCopyWithImpl<$Res, WindConfig>;
  @useResult
  $Res call(
      {int pauseStartMill,
      int pauseEndMill,
      int slideDurMill,
      double slideXStart,
      double slideXEnd,
      Color color,
      double width,
      double y,
      double windGust,
      double blurSigma,
      @JsonKey(ignore: true) BlurStyle blurStyle});
}

/// @nodoc
class _$WindConfigCopyWithImpl<$Res, $Val extends WindConfig>
    implements $WindConfigCopyWith<$Res> {
  _$WindConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pauseStartMill = null,
    Object? pauseEndMill = null,
    Object? slideDurMill = null,
    Object? slideXStart = null,
    Object? slideXEnd = null,
    Object? color = null,
    Object? width = null,
    Object? y = null,
    Object? windGust = null,
    Object? blurSigma = null,
    Object? blurStyle = null,
  }) {
    return _then(_value.copyWith(
      pauseStartMill: null == pauseStartMill
          ? _value.pauseStartMill
          : pauseStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseEndMill: null == pauseEndMill
          ? _value.pauseEndMill
          : pauseEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideDurMill: null == slideDurMill
          ? _value.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideXStart: null == slideXStart
          ? _value.slideXStart
          : slideXStart // ignore: cast_nullable_to_non_nullable
              as double,
      slideXEnd: null == slideXEnd
          ? _value.slideXEnd
          : slideXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      windGust: null == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _value.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      blurStyle: null == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WindConfigCopyWith<$Res>
    implements $WindConfigCopyWith<$Res> {
  factory _$$_WindConfigCopyWith(
          _$_WindConfig value, $Res Function(_$_WindConfig) then) =
      __$$_WindConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pauseStartMill,
      int pauseEndMill,
      int slideDurMill,
      double slideXStart,
      double slideXEnd,
      Color color,
      double width,
      double y,
      double windGust,
      double blurSigma,
      @JsonKey(ignore: true) BlurStyle blurStyle});
}

/// @nodoc
class __$$_WindConfigCopyWithImpl<$Res>
    extends _$WindConfigCopyWithImpl<$Res, _$_WindConfig>
    implements _$$_WindConfigCopyWith<$Res> {
  __$$_WindConfigCopyWithImpl(
      _$_WindConfig _value, $Res Function(_$_WindConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pauseStartMill = null,
    Object? pauseEndMill = null,
    Object? slideDurMill = null,
    Object? slideXStart = null,
    Object? slideXEnd = null,
    Object? color = null,
    Object? width = null,
    Object? y = null,
    Object? windGust = null,
    Object? blurSigma = null,
    Object? blurStyle = null,
  }) {
    return _then(_$_WindConfig(
      pauseStartMill: null == pauseStartMill
          ? _value.pauseStartMill
          : pauseStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseEndMill: null == pauseEndMill
          ? _value.pauseEndMill
          : pauseEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideDurMill: null == slideDurMill
          ? _value.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideXStart: null == slideXStart
          ? _value.slideXStart
          : slideXStart // ignore: cast_nullable_to_non_nullable
              as double,
      slideXEnd: null == slideXEnd
          ? _value.slideXEnd
          : slideXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      windGust: null == windGust
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _value.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      blurStyle: null == blurStyle
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _$_WindConfig implements _WindConfig {
  const _$_WindConfig(
      {this.pauseStartMill = 50,
      this.pauseEndMill = 6000,
      this.slideDurMill = 1000,
      this.slideXStart = 0.0,
      this.slideXEnd = 500.0,
      this.color = const Color.fromARGB(255, 96, 125, 139),
      this.width = 8.0,
      this.y = 300.0,
      this.windGust = 15.0,
      this.blurSigma = 8.0,
      @JsonKey(ignore: true) this.blurStyle = BlurStyle.solid});

  factory _$_WindConfig.fromJson(Map<String, dynamic> json) =>
      _$$_WindConfigFromJson(json);

  @override
  @JsonKey()
  final int pauseStartMill;
  @override
  @JsonKey()
  final int pauseEndMill;
  @override
  @JsonKey()
  final int slideDurMill;
  @override
  @JsonKey()
  final double slideXStart;
  @override
  @JsonKey()
  final double slideXEnd;
  @override
  @JsonKey()
  final Color color;
  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double y;
  @override
  @JsonKey()
  final double windGust;
  @override
  @JsonKey()
  final double blurSigma;
  @override
  @JsonKey(ignore: true)
  final BlurStyle blurStyle;

  @override
  String toString() {
    return 'WindConfig(pauseStartMill: $pauseStartMill, pauseEndMill: $pauseEndMill, slideDurMill: $slideDurMill, slideXStart: $slideXStart, slideXEnd: $slideXEnd, color: $color, width: $width, y: $y, windGust: $windGust, blurSigma: $blurSigma, blurStyle: $blurStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WindConfig &&
            (identical(other.pauseStartMill, pauseStartMill) ||
                other.pauseStartMill == pauseStartMill) &&
            (identical(other.pauseEndMill, pauseEndMill) ||
                other.pauseEndMill == pauseEndMill) &&
            (identical(other.slideDurMill, slideDurMill) ||
                other.slideDurMill == slideDurMill) &&
            (identical(other.slideXStart, slideXStart) ||
                other.slideXStart == slideXStart) &&
            (identical(other.slideXEnd, slideXEnd) ||
                other.slideXEnd == slideXEnd) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.windGust, windGust) ||
                other.windGust == windGust) &&
            (identical(other.blurSigma, blurSigma) ||
                other.blurSigma == blurSigma) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pauseStartMill,
      pauseEndMill,
      slideDurMill,
      slideXStart,
      slideXEnd,
      color,
      width,
      y,
      windGust,
      blurSigma,
      blurStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WindConfigCopyWith<_$_WindConfig> get copyWith =>
      __$$_WindConfigCopyWithImpl<_$_WindConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindConfigToJson(
      this,
    );
  }
}

abstract class _WindConfig implements WindConfig {
  const factory _WindConfig(
      {final int pauseStartMill,
      final int pauseEndMill,
      final int slideDurMill,
      final double slideXStart,
      final double slideXEnd,
      final Color color,
      final double width,
      final double y,
      final double windGust,
      final double blurSigma,
      @JsonKey(ignore: true) final BlurStyle blurStyle}) = _$_WindConfig;

  factory _WindConfig.fromJson(Map<String, dynamic> json) =
      _$_WindConfig.fromJson;

  @override
  int get pauseStartMill;
  @override
  int get pauseEndMill;
  @override
  int get slideDurMill;
  @override
  double get slideXStart;
  @override
  double get slideXEnd;
  @override
  Color get color;
  @override
  double get width;
  @override
  double get y;
  @override
  double get windGust;
  @override
  double get blurSigma;
  @override
  @JsonKey(ignore: true)
  BlurStyle get blurStyle;
  @override
  @JsonKey(ignore: true)
  _$$_WindConfigCopyWith<_$_WindConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
