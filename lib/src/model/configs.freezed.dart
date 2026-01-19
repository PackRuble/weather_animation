// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SunConfig {
  /// The width of the sun (in pixels).
  double get width;

  /// The sigma argument controls the size of the blur effect.
  ///
  /// It is the standard deviation of the Gaussian blur to apply. The value
  /// must be greater than zero. The sigma corresponds to very roughly half the
  /// radius of the effect in pixels.
  ///
  /// More: [MaskFilter.blur]
  double get blurSigma;

  /// The style argument controls the kind of effect to draw; see BlurStyle.
  @ignoreJson
  BlurStyle get blurStyle;

  /// The location of the sun on the screen. By default, the top left corner.
  /// Otherwise right.
  bool get isLeftLocation;

  /// The color of the sun's core.
  Color get coreColor;

  /// The color of the middle ring of the sun.
  Color get midColor;

  /// The color of the outer ring of the sun.
  Color get outColor;

  /// Time of animation of the middle ring of the sun (in milliseconds).
  int get animMidMill;

  /// Time of animation of the outer ring of the sun (in milliseconds).
  int get animOutMill;

  /// Create a copy of SunConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SunConfigCopyWith<SunConfig> get copyWith =>
      _$SunConfigCopyWithImpl<SunConfig>(this as SunConfig, _$identity);

  /// Serializes this SunConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SunConfig &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, blurSigma, blurStyle,
      isLeftLocation, coreColor, midColor, outColor, animMidMill, animOutMill);

  @override
  String toString() {
    return 'SunConfig(width: $width, blurSigma: $blurSigma, blurStyle: $blurStyle, isLeftLocation: $isLeftLocation, coreColor: $coreColor, midColor: $midColor, outColor: $outColor, animMidMill: $animMidMill, animOutMill: $animOutMill)';
  }
}

/// @nodoc
abstract mixin class $SunConfigCopyWith<$Res> {
  factory $SunConfigCopyWith(SunConfig value, $Res Function(SunConfig) _then) =
      _$SunConfigCopyWithImpl;
  @useResult
  $Res call(
      {double width,
      double blurSigma,
      @ignoreJson BlurStyle blurStyle,
      bool isLeftLocation,
      Color coreColor,
      Color midColor,
      Color outColor,
      int animMidMill,
      int animOutMill});
}

/// @nodoc
class _$SunConfigCopyWithImpl<$Res> implements $SunConfigCopyWith<$Res> {
  _$SunConfigCopyWithImpl(this._self, this._then);

  final SunConfig _self;
  final $Res Function(SunConfig) _then;

  /// Create a copy of SunConfig
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _self.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      blurStyle: null == blurStyle
          ? _self.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
      isLeftLocation: null == isLeftLocation
          ? _self.isLeftLocation
          : isLeftLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      coreColor: null == coreColor
          ? _self.coreColor
          : coreColor // ignore: cast_nullable_to_non_nullable
              as Color,
      midColor: null == midColor
          ? _self.midColor
          : midColor // ignore: cast_nullable_to_non_nullable
              as Color,
      outColor: null == outColor
          ? _self.outColor
          : outColor // ignore: cast_nullable_to_non_nullable
              as Color,
      animMidMill: null == animMidMill
          ? _self.animMidMill
          : animMidMill // ignore: cast_nullable_to_non_nullable
              as int,
      animOutMill: null == animOutMill
          ? _self.animOutMill
          : animOutMill // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SunConfig].
extension SunConfigPatterns on SunConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SunConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SunConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SunConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SunConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SunConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SunConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            double width,
            double blurSigma,
            @ignoreJson BlurStyle blurStyle,
            bool isLeftLocation,
            Color coreColor,
            Color midColor,
            Color outColor,
            int animMidMill,
            int animOutMill)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SunConfig() when $default != null:
        return $default(
            _that.width,
            _that.blurSigma,
            _that.blurStyle,
            _that.isLeftLocation,
            _that.coreColor,
            _that.midColor,
            _that.outColor,
            _that.animMidMill,
            _that.animOutMill);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            double width,
            double blurSigma,
            @ignoreJson BlurStyle blurStyle,
            bool isLeftLocation,
            Color coreColor,
            Color midColor,
            Color outColor,
            int animMidMill,
            int animOutMill)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SunConfig():
        return $default(
            _that.width,
            _that.blurSigma,
            _that.blurStyle,
            _that.isLeftLocation,
            _that.coreColor,
            _that.midColor,
            _that.outColor,
            _that.animMidMill,
            _that.animOutMill);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            double width,
            double blurSigma,
            @ignoreJson BlurStyle blurStyle,
            bool isLeftLocation,
            Color coreColor,
            Color midColor,
            Color outColor,
            int animMidMill,
            int animOutMill)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SunConfig() when $default != null:
        return $default(
            _that.width,
            _that.blurSigma,
            _that.blurStyle,
            _that.isLeftLocation,
            _that.coreColor,
            _that.midColor,
            _that.outColor,
            _that.animMidMill,
            _that.animOutMill);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _SunConfig extends SunConfig {
  const _SunConfig(
      {this.width = 360.0,
      this.blurSigma = 13.0,
      @ignoreJson this.blurStyle = BlurStyle.solid,
      this.isLeftLocation = true,
      this.coreColor = const Color.fromARGB(255, 255, 152, 0),
      this.midColor = const Color.fromARGB(255, 255, 238, 88),
      this.outColor = const Color.fromARGB(255, 255, 167, 38),
      this.animMidMill = 1500,
      this.animOutMill = 1500})
      : super._();
  factory _SunConfig.fromJson(Map<String, dynamic> json) =>
      _$SunConfigFromJson(json);

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
  @ignoreJson
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

  /// Create a copy of SunConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SunConfigCopyWith<_SunConfig> get copyWith =>
      __$SunConfigCopyWithImpl<_SunConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SunConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SunConfig &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, blurSigma, blurStyle,
      isLeftLocation, coreColor, midColor, outColor, animMidMill, animOutMill);

  @override
  String toString() {
    return 'SunConfig(width: $width, blurSigma: $blurSigma, blurStyle: $blurStyle, isLeftLocation: $isLeftLocation, coreColor: $coreColor, midColor: $midColor, outColor: $outColor, animMidMill: $animMidMill, animOutMill: $animOutMill)';
  }
}

/// @nodoc
abstract mixin class _$SunConfigCopyWith<$Res>
    implements $SunConfigCopyWith<$Res> {
  factory _$SunConfigCopyWith(
          _SunConfig value, $Res Function(_SunConfig) _then) =
      __$SunConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double width,
      double blurSigma,
      @ignoreJson BlurStyle blurStyle,
      bool isLeftLocation,
      Color coreColor,
      Color midColor,
      Color outColor,
      int animMidMill,
      int animOutMill});
}

/// @nodoc
class __$SunConfigCopyWithImpl<$Res> implements _$SunConfigCopyWith<$Res> {
  __$SunConfigCopyWithImpl(this._self, this._then);

  final _SunConfig _self;
  final $Res Function(_SunConfig) _then;

  /// Create a copy of SunConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SunConfig(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _self.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      blurStyle: null == blurStyle
          ? _self.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
      isLeftLocation: null == isLeftLocation
          ? _self.isLeftLocation
          : isLeftLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      coreColor: null == coreColor
          ? _self.coreColor
          : coreColor // ignore: cast_nullable_to_non_nullable
              as Color,
      midColor: null == midColor
          ? _self.midColor
          : midColor // ignore: cast_nullable_to_non_nullable
              as Color,
      outColor: null == outColor
          ? _self.outColor
          : outColor // ignore: cast_nullable_to_non_nullable
              as Color,
      animMidMill: null == animMidMill
          ? _self.animMidMill
          : animMidMill // ignore: cast_nullable_to_non_nullable
              as int,
      animOutMill: null == animOutMill
          ? _self.animOutMill
          : animOutMill // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

SnowConfig _$SnowConfigFromJson(Map<String, dynamic> json) {
  return _SnowflakeConfig.fromJson(json);
}

/// @nodoc
mixin _$SnowConfig {
  /// Number of snowflakes.
  int get count;

  /// Snowflake size.
  double get size;

  /// Snowflake color.
  Color get color;

  /// Snowflake icon. You can use a custom widget [widgetSnowflake].
  @ignoreJson
  IconData get icon;

  /// Specify the snowflake widget. In this case, the fields [sizeSnowflake],
  /// [snowColor] and [iconDataSnowflake] be ignored.
  @ignoreJson
  Widget? get widgetSnowflake;

  /// The X-axis zone where the snowflakes start to fall (in pixels).
  double get areaXStart;

  /// The X-axis zone where the snowflakes end to fall (in pixels).
  double get areaXEnd;

  /// The Y-axis zone where the snowflakes start to fall (in pixels).
  double get areaYStart;

  /// The Y-axis zone where the snowflakes end to fall (in pixels).
  double get areaYEnd;

  /// Minimum deviation from the direction of snowflake fall (in pixels).
  double get waveRangeMin;

  /// Maximum deviation from the direction of snowflake fall (in pixels).
  double get waveRangeMax;

  /// Minimum wave effect duration time (in seconds).
  int get waveMinSec;

  /// Maximum wave effect duration time (in seconds).
  int get waveMaxSec;

  /// An parametric animation easing curve. Specify to create a wave effect.
  @ignoreJson
  Curve get waveCurve;

  /// An parametric animation easing curve. Specify how fast the snowflakes will
  /// disappear.
  @ignoreJson
  Curve get fadeCurve;

  /// Minimum snowflake fall time (in seconds).
  int get fallMinSec;

  /// Maximum snowflake fall time (in seconds).
  int get fallMaxSec;

  /// Create a copy of SnowConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnowConfigCopyWith<SnowConfig> get copyWith =>
      _$SnowConfigCopyWithImpl<SnowConfig>(this as SnowConfig, _$identity);

  /// Serializes this SnowConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnowConfig &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SnowConfig(count: $count, size: $size, color: $color, icon: $icon, widgetSnowflake: $widgetSnowflake, areaXStart: $areaXStart, areaXEnd: $areaXEnd, areaYStart: $areaYStart, areaYEnd: $areaYEnd, waveRangeMin: $waveRangeMin, waveRangeMax: $waveRangeMax, waveMinSec: $waveMinSec, waveMaxSec: $waveMaxSec, waveCurve: $waveCurve, fadeCurve: $fadeCurve, fallMinSec: $fallMinSec, fallMaxSec: $fallMaxSec)';
  }
}

/// @nodoc
abstract mixin class $SnowConfigCopyWith<$Res> {
  factory $SnowConfigCopyWith(
          SnowConfig value, $Res Function(SnowConfig) _then) =
      _$SnowConfigCopyWithImpl;
  @useResult
  $Res call(
      {int count,
      double size,
      Color color,
      @ignoreJson IconData icon,
      @ignoreJson Widget? widgetSnowflake,
      double areaXStart,
      double areaXEnd,
      double areaYStart,
      double areaYEnd,
      double waveRangeMin,
      double waveRangeMax,
      int waveMinSec,
      int waveMaxSec,
      @ignoreJson Curve waveCurve,
      @ignoreJson Curve fadeCurve,
      int fallMinSec,
      int fallMaxSec});
}

/// @nodoc
class _$SnowConfigCopyWithImpl<$Res> implements $SnowConfigCopyWith<$Res> {
  _$SnowConfigCopyWithImpl(this._self, this._then);

  final SnowConfig _self;
  final $Res Function(SnowConfig) _then;

  /// Create a copy of SnowConfig
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      widgetSnowflake: freezed == widgetSnowflake
          ? _self.widgetSnowflake
          : widgetSnowflake // ignore: cast_nullable_to_non_nullable
              as Widget?,
      areaXStart: null == areaXStart
          ? _self.areaXStart
          : areaXStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaXEnd: null == areaXEnd
          ? _self.areaXEnd
          : areaXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      areaYStart: null == areaYStart
          ? _self.areaYStart
          : areaYStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaYEnd: null == areaYEnd
          ? _self.areaYEnd
          : areaYEnd // ignore: cast_nullable_to_non_nullable
              as double,
      waveRangeMin: null == waveRangeMin
          ? _self.waveRangeMin
          : waveRangeMin // ignore: cast_nullable_to_non_nullable
              as double,
      waveRangeMax: null == waveRangeMax
          ? _self.waveRangeMax
          : waveRangeMax // ignore: cast_nullable_to_non_nullable
              as double,
      waveMinSec: null == waveMinSec
          ? _self.waveMinSec
          : waveMinSec // ignore: cast_nullable_to_non_nullable
              as int,
      waveMaxSec: null == waveMaxSec
          ? _self.waveMaxSec
          : waveMaxSec // ignore: cast_nullable_to_non_nullable
              as int,
      waveCurve: null == waveCurve
          ? _self.waveCurve
          : waveCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fadeCurve: null == fadeCurve
          ? _self.fadeCurve
          : fadeCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fallMinSec: null == fallMinSec
          ? _self.fallMinSec
          : fallMinSec // ignore: cast_nullable_to_non_nullable
              as int,
      fallMaxSec: null == fallMaxSec
          ? _self.fallMaxSec
          : fallMaxSec // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnowConfig].
extension SnowConfigPatterns on SnowConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnowflakeConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnowflakeConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnowflakeConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnowflakeConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnowflakeConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnowflakeConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int count,
            double size,
            Color color,
            @ignoreJson IconData icon,
            @ignoreJson Widget? widgetSnowflake,
            double areaXStart,
            double areaXEnd,
            double areaYStart,
            double areaYEnd,
            double waveRangeMin,
            double waveRangeMax,
            int waveMinSec,
            int waveMaxSec,
            @ignoreJson Curve waveCurve,
            @ignoreJson Curve fadeCurve,
            int fallMinSec,
            int fallMaxSec)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnowflakeConfig() when $default != null:
        return $default(
            _that.count,
            _that.size,
            _that.color,
            _that.icon,
            _that.widgetSnowflake,
            _that.areaXStart,
            _that.areaXEnd,
            _that.areaYStart,
            _that.areaYEnd,
            _that.waveRangeMin,
            _that.waveRangeMax,
            _that.waveMinSec,
            _that.waveMaxSec,
            _that.waveCurve,
            _that.fadeCurve,
            _that.fallMinSec,
            _that.fallMaxSec);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int count,
            double size,
            Color color,
            @ignoreJson IconData icon,
            @ignoreJson Widget? widgetSnowflake,
            double areaXStart,
            double areaXEnd,
            double areaYStart,
            double areaYEnd,
            double waveRangeMin,
            double waveRangeMax,
            int waveMinSec,
            int waveMaxSec,
            @ignoreJson Curve waveCurve,
            @ignoreJson Curve fadeCurve,
            int fallMinSec,
            int fallMaxSec)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnowflakeConfig():
        return $default(
            _that.count,
            _that.size,
            _that.color,
            _that.icon,
            _that.widgetSnowflake,
            _that.areaXStart,
            _that.areaXEnd,
            _that.areaYStart,
            _that.areaYEnd,
            _that.waveRangeMin,
            _that.waveRangeMax,
            _that.waveMinSec,
            _that.waveMaxSec,
            _that.waveCurve,
            _that.fadeCurve,
            _that.fallMinSec,
            _that.fallMaxSec);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int count,
            double size,
            Color color,
            @ignoreJson IconData icon,
            @ignoreJson Widget? widgetSnowflake,
            double areaXStart,
            double areaXEnd,
            double areaYStart,
            double areaYEnd,
            double waveRangeMin,
            double waveRangeMax,
            int waveMinSec,
            int waveMaxSec,
            @ignoreJson Curve waveCurve,
            @ignoreJson Curve fadeCurve,
            int fallMinSec,
            int fallMaxSec)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnowflakeConfig() when $default != null:
        return $default(
            _that.count,
            _that.size,
            _that.color,
            _that.icon,
            _that.widgetSnowflake,
            _that.areaXStart,
            _that.areaXEnd,
            _that.areaYStart,
            _that.areaYEnd,
            _that.waveRangeMin,
            _that.waveRangeMax,
            _that.waveMinSec,
            _that.waveMaxSec,
            _that.waveCurve,
            _that.fadeCurve,
            _that.fallMinSec,
            _that.fallMaxSec);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _SnowflakeConfig extends SnowConfig {
  const _SnowflakeConfig(
      {this.count = 20,
      this.size = 20.0,
      this.color = const Color.fromARGB(179, 255, 255, 255),
      @ignoreJson this.icon = Icons.ac_unit_rounded,
      @ignoreJson this.widgetSnowflake,
      this.areaXStart = 90.0,
      this.areaXEnd = 230.0,
      this.areaYStart = 200.0,
      this.areaYEnd = 540.0,
      this.waveRangeMin = 20.0,
      this.waveRangeMax = 110.0,
      this.waveMinSec = 5,
      this.waveMaxSec = 20,
      @ignoreJson this.waveCurve = Curves.easeInOutSine,
      @ignoreJson this.fadeCurve = Curves.easeInCirc,
      this.fallMinSec = 10,
      this.fallMaxSec = 60})
      : assert(waveRangeMin > 0, 'waveRangeMin must be greater than 0'),
        assert(waveRangeMax >= waveRangeMin,
            'waveRangeMax must be greater than waveRangeMin'),
        super._();
  factory _SnowflakeConfig.fromJson(Map<String, dynamic> json) =>
      _$SnowflakeConfigFromJson(json);

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
  @ignoreJson
  final IconData icon;

  /// Specify the snowflake widget. In this case, the fields [sizeSnowflake],
  /// [snowColor] and [iconDataSnowflake] be ignored.
  @override
  @ignoreJson
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
  @ignoreJson
  final Curve waveCurve;

  /// An parametric animation easing curve. Specify how fast the snowflakes will
  /// disappear.
  @override
  @ignoreJson
  final Curve fadeCurve;

  /// Minimum snowflake fall time (in seconds).
  @override
  @JsonKey()
  final int fallMinSec;

  /// Maximum snowflake fall time (in seconds).
  @override
  @JsonKey()
  final int fallMaxSec;

  /// Create a copy of SnowConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnowflakeConfigCopyWith<_SnowflakeConfig> get copyWith =>
      __$SnowflakeConfigCopyWithImpl<_SnowflakeConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnowflakeConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnowflakeConfig &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'SnowConfig(count: $count, size: $size, color: $color, icon: $icon, widgetSnowflake: $widgetSnowflake, areaXStart: $areaXStart, areaXEnd: $areaXEnd, areaYStart: $areaYStart, areaYEnd: $areaYEnd, waveRangeMin: $waveRangeMin, waveRangeMax: $waveRangeMax, waveMinSec: $waveMinSec, waveMaxSec: $waveMaxSec, waveCurve: $waveCurve, fadeCurve: $fadeCurve, fallMinSec: $fallMinSec, fallMaxSec: $fallMaxSec)';
  }
}

/// @nodoc
abstract mixin class _$SnowflakeConfigCopyWith<$Res>
    implements $SnowConfigCopyWith<$Res> {
  factory _$SnowflakeConfigCopyWith(
          _SnowflakeConfig value, $Res Function(_SnowflakeConfig) _then) =
      __$SnowflakeConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int count,
      double size,
      Color color,
      @ignoreJson IconData icon,
      @ignoreJson Widget? widgetSnowflake,
      double areaXStart,
      double areaXEnd,
      double areaYStart,
      double areaYEnd,
      double waveRangeMin,
      double waveRangeMax,
      int waveMinSec,
      int waveMaxSec,
      @ignoreJson Curve waveCurve,
      @ignoreJson Curve fadeCurve,
      int fallMinSec,
      int fallMaxSec});
}

/// @nodoc
class __$SnowflakeConfigCopyWithImpl<$Res>
    implements _$SnowflakeConfigCopyWith<$Res> {
  __$SnowflakeConfigCopyWithImpl(this._self, this._then);

  final _SnowflakeConfig _self;
  final $Res Function(_SnowflakeConfig) _then;

  /// Create a copy of SnowConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SnowflakeConfig(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      widgetSnowflake: freezed == widgetSnowflake
          ? _self.widgetSnowflake
          : widgetSnowflake // ignore: cast_nullable_to_non_nullable
              as Widget?,
      areaXStart: null == areaXStart
          ? _self.areaXStart
          : areaXStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaXEnd: null == areaXEnd
          ? _self.areaXEnd
          : areaXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      areaYStart: null == areaYStart
          ? _self.areaYStart
          : areaYStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaYEnd: null == areaYEnd
          ? _self.areaYEnd
          : areaYEnd // ignore: cast_nullable_to_non_nullable
              as double,
      waveRangeMin: null == waveRangeMin
          ? _self.waveRangeMin
          : waveRangeMin // ignore: cast_nullable_to_non_nullable
              as double,
      waveRangeMax: null == waveRangeMax
          ? _self.waveRangeMax
          : waveRangeMax // ignore: cast_nullable_to_non_nullable
              as double,
      waveMinSec: null == waveMinSec
          ? _self.waveMinSec
          : waveMinSec // ignore: cast_nullable_to_non_nullable
              as int,
      waveMaxSec: null == waveMaxSec
          ? _self.waveMaxSec
          : waveMaxSec // ignore: cast_nullable_to_non_nullable
              as int,
      waveCurve: null == waveCurve
          ? _self.waveCurve
          : waveCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fadeCurve: null == fadeCurve
          ? _self.fadeCurve
          : fadeCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fallMinSec: null == fallMinSec
          ? _self.fallMinSec
          : fallMinSec // ignore: cast_nullable_to_non_nullable
              as int,
      fallMaxSec: null == fallMaxSec
          ? _self.fallMaxSec
          : fallMaxSec // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$CloudConfig {
  /// Cloud size.
  double get size;

  /// The color of the cloud.
  Color get color;

  /// Cloud icon. You can use a custom widget [widgetCloud].
  @ignoreJson
  IconData get icon;

  /// Specify the cloud widget. In this case, the fields [icon] and
  /// [color] be ignored.
  @ignoreJson
  Widget? get widgetCloud;

  /// The coordinate of cloud displacement along the x-axis (in pixels).
  double get x;

  /// The coordinate of cloud displacement along the x-axis (in pixels).
  double get y;

  /// The scale factor of the widget at the beginning of the animation.
  double get scaleBegin;

  /// The scale factor of the widget at the end of the animation.
  double get scaleEnd;

  /// Animation curve for [ScaleTransition].
  @ignoreJson
  Curve get scaleCurve;

  /// Offset of the widget along the X-axis during the slide animation (in pixels).
  double get slideX;

  /// Offset of the widget along the Y-axis during the slide animation (in pixels).
  double get slideY;

  /// Shift duration (in milliseconds).
  int get slideDurMill;

  /// Animation curve for [SlideTransition].
  @ignoreJson
  Curve get slideCurve;

  /// Create a copy of CloudConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloudConfigCopyWith<CloudConfig> get copyWith =>
      _$CloudConfigCopyWithImpl<CloudConfig>(this as CloudConfig, _$identity);

  /// Serializes this CloudConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloudConfig &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CloudConfig(size: $size, color: $color, icon: $icon, widgetCloud: $widgetCloud, x: $x, y: $y, scaleBegin: $scaleBegin, scaleEnd: $scaleEnd, scaleCurve: $scaleCurve, slideX: $slideX, slideY: $slideY, slideDurMill: $slideDurMill, slideCurve: $slideCurve)';
  }
}

/// @nodoc
abstract mixin class $CloudConfigCopyWith<$Res> {
  factory $CloudConfigCopyWith(
          CloudConfig value, $Res Function(CloudConfig) _then) =
      _$CloudConfigCopyWithImpl;
  @useResult
  $Res call(
      {double size,
      Color color,
      @ignoreJson IconData icon,
      @ignoreJson Widget? widgetCloud,
      double x,
      double y,
      double scaleBegin,
      double scaleEnd,
      @ignoreJson Curve scaleCurve,
      double slideX,
      double slideY,
      int slideDurMill,
      @ignoreJson Curve slideCurve});
}

/// @nodoc
class _$CloudConfigCopyWithImpl<$Res> implements $CloudConfigCopyWith<$Res> {
  _$CloudConfigCopyWithImpl(this._self, this._then);

  final CloudConfig _self;
  final $Res Function(CloudConfig) _then;

  /// Create a copy of CloudConfig
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      widgetCloud: freezed == widgetCloud
          ? _self.widgetCloud
          : widgetCloud // ignore: cast_nullable_to_non_nullable
              as Widget?,
      x: null == x
          ? _self.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      scaleBegin: null == scaleBegin
          ? _self.scaleBegin
          : scaleBegin // ignore: cast_nullable_to_non_nullable
              as double,
      scaleEnd: null == scaleEnd
          ? _self.scaleEnd
          : scaleEnd // ignore: cast_nullable_to_non_nullable
              as double,
      scaleCurve: null == scaleCurve
          ? _self.scaleCurve
          : scaleCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      slideX: null == slideX
          ? _self.slideX
          : slideX // ignore: cast_nullable_to_non_nullable
              as double,
      slideY: null == slideY
          ? _self.slideY
          : slideY // ignore: cast_nullable_to_non_nullable
              as double,
      slideDurMill: null == slideDurMill
          ? _self.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideCurve: null == slideCurve
          ? _self.slideCurve
          : slideCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// Adds pattern-matching-related methods to [CloudConfig].
extension CloudConfigPatterns on CloudConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CloudConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CloudConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CloudConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloudConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CloudConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloudConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            double size,
            Color color,
            @ignoreJson IconData icon,
            @ignoreJson Widget? widgetCloud,
            double x,
            double y,
            double scaleBegin,
            double scaleEnd,
            @ignoreJson Curve scaleCurve,
            double slideX,
            double slideY,
            int slideDurMill,
            @ignoreJson Curve slideCurve)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CloudConfig() when $default != null:
        return $default(
            _that.size,
            _that.color,
            _that.icon,
            _that.widgetCloud,
            _that.x,
            _that.y,
            _that.scaleBegin,
            _that.scaleEnd,
            _that.scaleCurve,
            _that.slideX,
            _that.slideY,
            _that.slideDurMill,
            _that.slideCurve);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            double size,
            Color color,
            @ignoreJson IconData icon,
            @ignoreJson Widget? widgetCloud,
            double x,
            double y,
            double scaleBegin,
            double scaleEnd,
            @ignoreJson Curve scaleCurve,
            double slideX,
            double slideY,
            int slideDurMill,
            @ignoreJson Curve slideCurve)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloudConfig():
        return $default(
            _that.size,
            _that.color,
            _that.icon,
            _that.widgetCloud,
            _that.x,
            _that.y,
            _that.scaleBegin,
            _that.scaleEnd,
            _that.scaleCurve,
            _that.slideX,
            _that.slideY,
            _that.slideDurMill,
            _that.slideCurve);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            double size,
            Color color,
            @ignoreJson IconData icon,
            @ignoreJson Widget? widgetCloud,
            double x,
            double y,
            double scaleBegin,
            double scaleEnd,
            @ignoreJson Curve scaleCurve,
            double slideX,
            double slideY,
            int slideDurMill,
            @ignoreJson Curve slideCurve)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloudConfig() when $default != null:
        return $default(
            _that.size,
            _that.color,
            _that.icon,
            _that.widgetCloud,
            _that.x,
            _that.y,
            _that.scaleBegin,
            _that.scaleEnd,
            _that.scaleCurve,
            _that.slideX,
            _that.slideY,
            _that.slideDurMill,
            _that.slideCurve);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _CloudConfig extends CloudConfig {
  const _CloudConfig(
      {this.size = 250.0,
      this.color = const Color.fromARGB(170, 255, 255, 255),
      @ignoreJson this.icon = Icons.cloud_rounded,
      @ignoreJson this.widgetCloud,
      this.x = 70.0,
      this.y = 5.0,
      this.scaleBegin = 1.0,
      this.scaleEnd = 1.1,
      @ignoreJson this.scaleCurve = Curves.fastOutSlowIn,
      this.slideX = 11.0,
      this.slideY = 5.0,
      this.slideDurMill = 2000,
      @ignoreJson this.slideCurve = Curves.fastOutSlowIn})
      : super._();
  factory _CloudConfig.fromJson(Map<String, dynamic> json) =>
      _$CloudConfigFromJson(json);

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
  @ignoreJson
  final IconData icon;

  /// Specify the cloud widget. In this case, the fields [icon] and
  /// [color] be ignored.
  @override
  @ignoreJson
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
  @ignoreJson
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
  @ignoreJson
  final Curve slideCurve;

  /// Create a copy of CloudConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CloudConfigCopyWith<_CloudConfig> get copyWith =>
      __$CloudConfigCopyWithImpl<_CloudConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloudConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CloudConfig &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'CloudConfig(size: $size, color: $color, icon: $icon, widgetCloud: $widgetCloud, x: $x, y: $y, scaleBegin: $scaleBegin, scaleEnd: $scaleEnd, scaleCurve: $scaleCurve, slideX: $slideX, slideY: $slideY, slideDurMill: $slideDurMill, slideCurve: $slideCurve)';
  }
}

/// @nodoc
abstract mixin class _$CloudConfigCopyWith<$Res>
    implements $CloudConfigCopyWith<$Res> {
  factory _$CloudConfigCopyWith(
          _CloudConfig value, $Res Function(_CloudConfig) _then) =
      __$CloudConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double size,
      Color color,
      @ignoreJson IconData icon,
      @ignoreJson Widget? widgetCloud,
      double x,
      double y,
      double scaleBegin,
      double scaleEnd,
      @ignoreJson Curve scaleCurve,
      double slideX,
      double slideY,
      int slideDurMill,
      @ignoreJson Curve slideCurve});
}

/// @nodoc
class __$CloudConfigCopyWithImpl<$Res> implements _$CloudConfigCopyWith<$Res> {
  __$CloudConfigCopyWithImpl(this._self, this._then);

  final _CloudConfig _self;
  final $Res Function(_CloudConfig) _then;

  /// Create a copy of CloudConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CloudConfig(
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      widgetCloud: freezed == widgetCloud
          ? _self.widgetCloud
          : widgetCloud // ignore: cast_nullable_to_non_nullable
              as Widget?,
      x: null == x
          ? _self.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      scaleBegin: null == scaleBegin
          ? _self.scaleBegin
          : scaleBegin // ignore: cast_nullable_to_non_nullable
              as double,
      scaleEnd: null == scaleEnd
          ? _self.scaleEnd
          : scaleEnd // ignore: cast_nullable_to_non_nullable
              as double,
      scaleCurve: null == scaleCurve
          ? _self.scaleCurve
          : scaleCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      slideX: null == slideX
          ? _self.slideX
          : slideX // ignore: cast_nullable_to_non_nullable
              as double,
      slideY: null == slideY
          ? _self.slideY
          : slideY // ignore: cast_nullable_to_non_nullable
              as double,
      slideDurMill: null == slideDurMill
          ? _self.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideCurve: null == slideCurve
          ? _self.slideCurve
          : slideCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc
mixin _$RainConfig {
  /// The number of raindrops.
  int get count;

  /// Raindrop length.
  double get lengthDrop;

  /// Raindrop width.
  double get widthDrop;

  /// The color of a raindrop.
  Color get color;

  /// Rounded drop ends. Otherwise, the ends be square.
  bool get isRoundedEndsDrop;

  /// Specify the cloud widget. In this case, the fields [count] and
  /// [color], [lengthDrop], [widthDrop], and []  be ignored.
  @ignoreJson
  Widget? get widgetRainDrop;

  /// Minimum duration time of the fall effect (in milliseconds).
  int get fallRangeMinDurMill;

  /// Maximum duration time of the fall effect (in milliseconds).
  int get fallRangeMaxDurMill;

  /// The X-axis zone where start to fall (in pixels).
  double get areaXStart;

  /// The X-axis zone where end to fall (in pixels).
  double get areaXEnd;

  /// The Y-axis zone where to fall (in pixels).
  double get areaYStart;

  /// The Y-axis zone where end to fall (in pixels).
  double get areaYEnd;

  /// Offset of the widget along the X-axis during the slide animation (in pixels).
  double get slideX;

  /// Offset of the widget along the Y-axis during the slide animation (in pixels).
  double get slideY;

  /// Shift duration (in milliseconds).
  int get slideDurMill;

  /// Animation curve for [SlideTransition].
  @ignoreJson
  Curve get slideCurve;
  @ignoreJson
  Curve get fallCurve;
  @ignoreJson
  Curve get fadeCurve;

  /// Create a copy of RainConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RainConfigCopyWith<RainConfig> get copyWith =>
      _$RainConfigCopyWithImpl<RainConfig>(this as RainConfig, _$identity);

  /// Serializes this RainConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RainConfig &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.lengthDrop, lengthDrop) ||
                other.lengthDrop == lengthDrop) &&
            (identical(other.widthDrop, widthDrop) ||
                other.widthDrop == widthDrop) &&
            (identical(other.color, color) || other.color == color) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      lengthDrop,
      widthDrop,
      color,
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

  @override
  String toString() {
    return 'RainConfig(count: $count, lengthDrop: $lengthDrop, widthDrop: $widthDrop, color: $color, isRoundedEndsDrop: $isRoundedEndsDrop, widgetRainDrop: $widgetRainDrop, fallRangeMinDurMill: $fallRangeMinDurMill, fallRangeMaxDurMill: $fallRangeMaxDurMill, areaXStart: $areaXStart, areaXEnd: $areaXEnd, areaYStart: $areaYStart, areaYEnd: $areaYEnd, slideX: $slideX, slideY: $slideY, slideDurMill: $slideDurMill, slideCurve: $slideCurve, fallCurve: $fallCurve, fadeCurve: $fadeCurve)';
  }
}

/// @nodoc
abstract mixin class $RainConfigCopyWith<$Res> {
  factory $RainConfigCopyWith(
          RainConfig value, $Res Function(RainConfig) _then) =
      _$RainConfigCopyWithImpl;
  @useResult
  $Res call(
      {int count,
      double lengthDrop,
      double widthDrop,
      Color color,
      bool isRoundedEndsDrop,
      @ignoreJson Widget? widgetRainDrop,
      int fallRangeMinDurMill,
      int fallRangeMaxDurMill,
      double areaXStart,
      double areaXEnd,
      double areaYStart,
      double areaYEnd,
      double slideX,
      double slideY,
      int slideDurMill,
      @ignoreJson Curve slideCurve,
      @ignoreJson Curve fallCurve,
      @ignoreJson Curve fadeCurve});
}

/// @nodoc
class _$RainConfigCopyWithImpl<$Res> implements $RainConfigCopyWith<$Res> {
  _$RainConfigCopyWithImpl(this._self, this._then);

  final RainConfig _self;
  final $Res Function(RainConfig) _then;

  /// Create a copy of RainConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? lengthDrop = null,
    Object? widthDrop = null,
    Object? color = null,
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
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      lengthDrop: null == lengthDrop
          ? _self.lengthDrop
          : lengthDrop // ignore: cast_nullable_to_non_nullable
              as double,
      widthDrop: null == widthDrop
          ? _self.widthDrop
          : widthDrop // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      isRoundedEndsDrop: null == isRoundedEndsDrop
          ? _self.isRoundedEndsDrop
          : isRoundedEndsDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      widgetRainDrop: freezed == widgetRainDrop
          ? _self.widgetRainDrop
          : widgetRainDrop // ignore: cast_nullable_to_non_nullable
              as Widget?,
      fallRangeMinDurMill: null == fallRangeMinDurMill
          ? _self.fallRangeMinDurMill
          : fallRangeMinDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      fallRangeMaxDurMill: null == fallRangeMaxDurMill
          ? _self.fallRangeMaxDurMill
          : fallRangeMaxDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      areaXStart: null == areaXStart
          ? _self.areaXStart
          : areaXStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaXEnd: null == areaXEnd
          ? _self.areaXEnd
          : areaXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      areaYStart: null == areaYStart
          ? _self.areaYStart
          : areaYStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaYEnd: null == areaYEnd
          ? _self.areaYEnd
          : areaYEnd // ignore: cast_nullable_to_non_nullable
              as double,
      slideX: null == slideX
          ? _self.slideX
          : slideX // ignore: cast_nullable_to_non_nullable
              as double,
      slideY: null == slideY
          ? _self.slideY
          : slideY // ignore: cast_nullable_to_non_nullable
              as double,
      slideDurMill: null == slideDurMill
          ? _self.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideCurve: null == slideCurve
          ? _self.slideCurve
          : slideCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fallCurve: null == fallCurve
          ? _self.fallCurve
          : fallCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fadeCurve: null == fadeCurve
          ? _self.fadeCurve
          : fadeCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// Adds pattern-matching-related methods to [RainConfig].
extension RainConfigPatterns on RainConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RainConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RainConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RainConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RainConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RainConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RainConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int count,
            double lengthDrop,
            double widthDrop,
            Color color,
            bool isRoundedEndsDrop,
            @ignoreJson Widget? widgetRainDrop,
            int fallRangeMinDurMill,
            int fallRangeMaxDurMill,
            double areaXStart,
            double areaXEnd,
            double areaYStart,
            double areaYEnd,
            double slideX,
            double slideY,
            int slideDurMill,
            @ignoreJson Curve slideCurve,
            @ignoreJson Curve fallCurve,
            @ignoreJson Curve fadeCurve)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RainConfig() when $default != null:
        return $default(
            _that.count,
            _that.lengthDrop,
            _that.widthDrop,
            _that.color,
            _that.isRoundedEndsDrop,
            _that.widgetRainDrop,
            _that.fallRangeMinDurMill,
            _that.fallRangeMaxDurMill,
            _that.areaXStart,
            _that.areaXEnd,
            _that.areaYStart,
            _that.areaYEnd,
            _that.slideX,
            _that.slideY,
            _that.slideDurMill,
            _that.slideCurve,
            _that.fallCurve,
            _that.fadeCurve);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int count,
            double lengthDrop,
            double widthDrop,
            Color color,
            bool isRoundedEndsDrop,
            @ignoreJson Widget? widgetRainDrop,
            int fallRangeMinDurMill,
            int fallRangeMaxDurMill,
            double areaXStart,
            double areaXEnd,
            double areaYStart,
            double areaYEnd,
            double slideX,
            double slideY,
            int slideDurMill,
            @ignoreJson Curve slideCurve,
            @ignoreJson Curve fallCurve,
            @ignoreJson Curve fadeCurve)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RainConfig():
        return $default(
            _that.count,
            _that.lengthDrop,
            _that.widthDrop,
            _that.color,
            _that.isRoundedEndsDrop,
            _that.widgetRainDrop,
            _that.fallRangeMinDurMill,
            _that.fallRangeMaxDurMill,
            _that.areaXStart,
            _that.areaXEnd,
            _that.areaYStart,
            _that.areaYEnd,
            _that.slideX,
            _that.slideY,
            _that.slideDurMill,
            _that.slideCurve,
            _that.fallCurve,
            _that.fadeCurve);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int count,
            double lengthDrop,
            double widthDrop,
            Color color,
            bool isRoundedEndsDrop,
            @ignoreJson Widget? widgetRainDrop,
            int fallRangeMinDurMill,
            int fallRangeMaxDurMill,
            double areaXStart,
            double areaXEnd,
            double areaYStart,
            double areaYEnd,
            double slideX,
            double slideY,
            int slideDurMill,
            @ignoreJson Curve slideCurve,
            @ignoreJson Curve fallCurve,
            @ignoreJson Curve fadeCurve)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RainConfig() when $default != null:
        return $default(
            _that.count,
            _that.lengthDrop,
            _that.widthDrop,
            _that.color,
            _that.isRoundedEndsDrop,
            _that.widgetRainDrop,
            _that.fallRangeMinDurMill,
            _that.fallRangeMaxDurMill,
            _that.areaXStart,
            _that.areaXEnd,
            _that.areaYStart,
            _that.areaYEnd,
            _that.slideX,
            _that.slideY,
            _that.slideDurMill,
            _that.slideCurve,
            _that.fallCurve,
            _that.fadeCurve);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _RainConfig extends RainConfig {
  const _RainConfig(
      {this.count = 10,
      this.lengthDrop = 12.0,
      this.widthDrop = 4.0,
      this.color = const Color.fromARGB(153, 120, 144, 156),
      this.isRoundedEndsDrop = true,
      @ignoreJson this.widgetRainDrop,
      this.fallRangeMinDurMill = 500,
      this.fallRangeMaxDurMill = 1500,
      this.areaXStart = 120.0,
      this.areaXEnd = 190.0,
      this.areaYStart = 215.0,
      this.areaYEnd = 540.0,
      this.slideX = 2.0,
      this.slideY = 0.0,
      this.slideDurMill = 2000,
      @ignoreJson this.slideCurve = Curves.fastOutSlowIn,
      @ignoreJson this.fallCurve = Curves.easeInQuad,
      @ignoreJson this.fadeCurve = Curves.easeInExpo})
      : super._();
  factory _RainConfig.fromJson(Map<String, dynamic> json) =>
      _$RainConfigFromJson(json);

  /// The number of raindrops.
  @override
  @JsonKey()
  final int count;

  /// Raindrop length.
  @override
  @JsonKey()
  final double lengthDrop;

  /// Raindrop width.
  @override
  @JsonKey()
  final double widthDrop;

  /// The color of a raindrop.
  @override
  @JsonKey()
  final Color color;

  /// Rounded drop ends. Otherwise, the ends be square.
  @override
  @JsonKey()
  final bool isRoundedEndsDrop;

  /// Specify the cloud widget. In this case, the fields [count] and
  /// [color], [lengthDrop], [widthDrop], and []  be ignored.
  @override
  @ignoreJson
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
  @ignoreJson
  final Curve slideCurve;
  @override
  @ignoreJson
  final Curve fallCurve;
  @override
  @ignoreJson
  final Curve fadeCurve;

  /// Create a copy of RainConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RainConfigCopyWith<_RainConfig> get copyWith =>
      __$RainConfigCopyWithImpl<_RainConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RainConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RainConfig &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.lengthDrop, lengthDrop) ||
                other.lengthDrop == lengthDrop) &&
            (identical(other.widthDrop, widthDrop) ||
                other.widthDrop == widthDrop) &&
            (identical(other.color, color) || other.color == color) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      lengthDrop,
      widthDrop,
      color,
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

  @override
  String toString() {
    return 'RainConfig(count: $count, lengthDrop: $lengthDrop, widthDrop: $widthDrop, color: $color, isRoundedEndsDrop: $isRoundedEndsDrop, widgetRainDrop: $widgetRainDrop, fallRangeMinDurMill: $fallRangeMinDurMill, fallRangeMaxDurMill: $fallRangeMaxDurMill, areaXStart: $areaXStart, areaXEnd: $areaXEnd, areaYStart: $areaYStart, areaYEnd: $areaYEnd, slideX: $slideX, slideY: $slideY, slideDurMill: $slideDurMill, slideCurve: $slideCurve, fallCurve: $fallCurve, fadeCurve: $fadeCurve)';
  }
}

/// @nodoc
abstract mixin class _$RainConfigCopyWith<$Res>
    implements $RainConfigCopyWith<$Res> {
  factory _$RainConfigCopyWith(
          _RainConfig value, $Res Function(_RainConfig) _then) =
      __$RainConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int count,
      double lengthDrop,
      double widthDrop,
      Color color,
      bool isRoundedEndsDrop,
      @ignoreJson Widget? widgetRainDrop,
      int fallRangeMinDurMill,
      int fallRangeMaxDurMill,
      double areaXStart,
      double areaXEnd,
      double areaYStart,
      double areaYEnd,
      double slideX,
      double slideY,
      int slideDurMill,
      @ignoreJson Curve slideCurve,
      @ignoreJson Curve fallCurve,
      @ignoreJson Curve fadeCurve});
}

/// @nodoc
class __$RainConfigCopyWithImpl<$Res> implements _$RainConfigCopyWith<$Res> {
  __$RainConfigCopyWithImpl(this._self, this._then);

  final _RainConfig _self;
  final $Res Function(_RainConfig) _then;

  /// Create a copy of RainConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
    Object? lengthDrop = null,
    Object? widthDrop = null,
    Object? color = null,
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
    return _then(_RainConfig(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      lengthDrop: null == lengthDrop
          ? _self.lengthDrop
          : lengthDrop // ignore: cast_nullable_to_non_nullable
              as double,
      widthDrop: null == widthDrop
          ? _self.widthDrop
          : widthDrop // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      isRoundedEndsDrop: null == isRoundedEndsDrop
          ? _self.isRoundedEndsDrop
          : isRoundedEndsDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      widgetRainDrop: freezed == widgetRainDrop
          ? _self.widgetRainDrop
          : widgetRainDrop // ignore: cast_nullable_to_non_nullable
              as Widget?,
      fallRangeMinDurMill: null == fallRangeMinDurMill
          ? _self.fallRangeMinDurMill
          : fallRangeMinDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      fallRangeMaxDurMill: null == fallRangeMaxDurMill
          ? _self.fallRangeMaxDurMill
          : fallRangeMaxDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      areaXStart: null == areaXStart
          ? _self.areaXStart
          : areaXStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaXEnd: null == areaXEnd
          ? _self.areaXEnd
          : areaXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      areaYStart: null == areaYStart
          ? _self.areaYStart
          : areaYStart // ignore: cast_nullable_to_non_nullable
              as double,
      areaYEnd: null == areaYEnd
          ? _self.areaYEnd
          : areaYEnd // ignore: cast_nullable_to_non_nullable
              as double,
      slideX: null == slideX
          ? _self.slideX
          : slideX // ignore: cast_nullable_to_non_nullable
              as double,
      slideY: null == slideY
          ? _self.slideY
          : slideY // ignore: cast_nullable_to_non_nullable
              as double,
      slideDurMill: null == slideDurMill
          ? _self.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideCurve: null == slideCurve
          ? _self.slideCurve
          : slideCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fallCurve: null == fallCurve
          ? _self.fallCurve
          : fallCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
      fadeCurve: null == fadeCurve
          ? _self.fadeCurve
          : fadeCurve // ignore: cast_nullable_to_non_nullable
              as Curve,
    ));
  }
}

/// @nodoc
mixin _$ThunderConfig {
  double get thunderWidth;
  double get blurSigma;
  @ignoreJson
  BlurStyle get blurStyle;
  Color get color;
  int get flashStartMill;
  int get flashEndMill;
  int get pauseStartMill;
  int get pauseEndMill;
  @ignoreJson
  List<Offset> get points;

  /// Create a copy of ThunderConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThunderConfigCopyWith<ThunderConfig> get copyWith =>
      _$ThunderConfigCopyWithImpl<ThunderConfig>(
          this as ThunderConfig, _$identity);

  /// Serializes this ThunderConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThunderConfig &&
            (identical(other.thunderWidth, thunderWidth) ||
                other.thunderWidth == thunderWidth) &&
            (identical(other.blurSigma, blurSigma) ||
                other.blurSigma == blurSigma) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.flashStartMill, flashStartMill) ||
                other.flashStartMill == flashStartMill) &&
            (identical(other.flashEndMill, flashEndMill) ||
                other.flashEndMill == flashEndMill) &&
            (identical(other.pauseStartMill, pauseStartMill) ||
                other.pauseStartMill == pauseStartMill) &&
            (identical(other.pauseEndMill, pauseEndMill) ||
                other.pauseEndMill == pauseEndMill) &&
            const DeepCollectionEquality().equals(other.points, points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thunderWidth,
      blurSigma,
      blurStyle,
      color,
      flashStartMill,
      flashEndMill,
      pauseStartMill,
      pauseEndMill,
      const DeepCollectionEquality().hash(points));

  @override
  String toString() {
    return 'ThunderConfig(thunderWidth: $thunderWidth, blurSigma: $blurSigma, blurStyle: $blurStyle, color: $color, flashStartMill: $flashStartMill, flashEndMill: $flashEndMill, pauseStartMill: $pauseStartMill, pauseEndMill: $pauseEndMill, points: $points)';
  }
}

/// @nodoc
abstract mixin class $ThunderConfigCopyWith<$Res> {
  factory $ThunderConfigCopyWith(
          ThunderConfig value, $Res Function(ThunderConfig) _then) =
      _$ThunderConfigCopyWithImpl;
  @useResult
  $Res call(
      {double thunderWidth,
      double blurSigma,
      @ignoreJson BlurStyle blurStyle,
      Color color,
      int flashStartMill,
      int flashEndMill,
      int pauseStartMill,
      int pauseEndMill,
      @ignoreJson List<Offset> points});
}

/// @nodoc
class _$ThunderConfigCopyWithImpl<$Res>
    implements $ThunderConfigCopyWith<$Res> {
  _$ThunderConfigCopyWithImpl(this._self, this._then);

  final ThunderConfig _self;
  final $Res Function(ThunderConfig) _then;

  /// Create a copy of ThunderConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thunderWidth = null,
    Object? blurSigma = null,
    Object? blurStyle = null,
    Object? color = null,
    Object? flashStartMill = null,
    Object? flashEndMill = null,
    Object? pauseStartMill = null,
    Object? pauseEndMill = null,
    Object? points = null,
  }) {
    return _then(_self.copyWith(
      thunderWidth: null == thunderWidth
          ? _self.thunderWidth
          : thunderWidth // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _self.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      blurStyle: null == blurStyle
          ? _self.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      flashStartMill: null == flashStartMill
          ? _self.flashStartMill
          : flashStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      flashEndMill: null == flashEndMill
          ? _self.flashEndMill
          : flashEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseStartMill: null == pauseStartMill
          ? _self.pauseStartMill
          : pauseStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseEndMill: null == pauseEndMill
          ? _self.pauseEndMill
          : pauseEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _self.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ThunderConfig].
extension ThunderConfigPatterns on ThunderConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ThunderConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThunderConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ThunderConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThunderConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ThunderConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThunderConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            double thunderWidth,
            double blurSigma,
            @ignoreJson BlurStyle blurStyle,
            Color color,
            int flashStartMill,
            int flashEndMill,
            int pauseStartMill,
            int pauseEndMill,
            @ignoreJson List<Offset> points)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThunderConfig() when $default != null:
        return $default(
            _that.thunderWidth,
            _that.blurSigma,
            _that.blurStyle,
            _that.color,
            _that.flashStartMill,
            _that.flashEndMill,
            _that.pauseStartMill,
            _that.pauseEndMill,
            _that.points);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            double thunderWidth,
            double blurSigma,
            @ignoreJson BlurStyle blurStyle,
            Color color,
            int flashStartMill,
            int flashEndMill,
            int pauseStartMill,
            int pauseEndMill,
            @ignoreJson List<Offset> points)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThunderConfig():
        return $default(
            _that.thunderWidth,
            _that.blurSigma,
            _that.blurStyle,
            _that.color,
            _that.flashStartMill,
            _that.flashEndMill,
            _that.pauseStartMill,
            _that.pauseEndMill,
            _that.points);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            double thunderWidth,
            double blurSigma,
            @ignoreJson BlurStyle blurStyle,
            Color color,
            int flashStartMill,
            int flashEndMill,
            int pauseStartMill,
            int pauseEndMill,
            @ignoreJson List<Offset> points)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThunderConfig() when $default != null:
        return $default(
            _that.thunderWidth,
            _that.blurSigma,
            _that.blurStyle,
            _that.color,
            _that.flashStartMill,
            _that.flashEndMill,
            _that.pauseStartMill,
            _that.pauseEndMill,
            _that.points);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _ThunderConfig extends ThunderConfig {
  const _ThunderConfig(
      {this.thunderWidth = 10.0,
      this.blurSigma = 13.0,
      @ignoreJson this.blurStyle = BlurStyle.solid,
      this.color = const Color.fromARGB(153, 255, 238, 88),
      this.flashStartMill = 50,
      this.flashEndMill = 300,
      this.pauseStartMill = 50,
      this.pauseEndMill = 6000,
      @ignoreJson
      final List<Offset> points = const [Offset(110, 210), Offset(120, 240)]})
      : _points = points,
        super._();
  factory _ThunderConfig.fromJson(Map<String, dynamic> json) =>
      _$ThunderConfigFromJson(json);

  @override
  @JsonKey()
  final double thunderWidth;
  @override
  @JsonKey()
  final double blurSigma;
  @override
  @ignoreJson
  final BlurStyle blurStyle;
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
  final List<Offset> _points;
  @override
  @ignoreJson
  List<Offset> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  /// Create a copy of ThunderConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThunderConfigCopyWith<_ThunderConfig> get copyWith =>
      __$ThunderConfigCopyWithImpl<_ThunderConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThunderConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThunderConfig &&
            (identical(other.thunderWidth, thunderWidth) ||
                other.thunderWidth == thunderWidth) &&
            (identical(other.blurSigma, blurSigma) ||
                other.blurSigma == blurSigma) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.flashStartMill, flashStartMill) ||
                other.flashStartMill == flashStartMill) &&
            (identical(other.flashEndMill, flashEndMill) ||
                other.flashEndMill == flashEndMill) &&
            (identical(other.pauseStartMill, pauseStartMill) ||
                other.pauseStartMill == pauseStartMill) &&
            (identical(other.pauseEndMill, pauseEndMill) ||
                other.pauseEndMill == pauseEndMill) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thunderWidth,
      blurSigma,
      blurStyle,
      color,
      flashStartMill,
      flashEndMill,
      pauseStartMill,
      pauseEndMill,
      const DeepCollectionEquality().hash(_points));

  @override
  String toString() {
    return 'ThunderConfig(thunderWidth: $thunderWidth, blurSigma: $blurSigma, blurStyle: $blurStyle, color: $color, flashStartMill: $flashStartMill, flashEndMill: $flashEndMill, pauseStartMill: $pauseStartMill, pauseEndMill: $pauseEndMill, points: $points)';
  }
}

/// @nodoc
abstract mixin class _$ThunderConfigCopyWith<$Res>
    implements $ThunderConfigCopyWith<$Res> {
  factory _$ThunderConfigCopyWith(
          _ThunderConfig value, $Res Function(_ThunderConfig) _then) =
      __$ThunderConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double thunderWidth,
      double blurSigma,
      @ignoreJson BlurStyle blurStyle,
      Color color,
      int flashStartMill,
      int flashEndMill,
      int pauseStartMill,
      int pauseEndMill,
      @ignoreJson List<Offset> points});
}

/// @nodoc
class __$ThunderConfigCopyWithImpl<$Res>
    implements _$ThunderConfigCopyWith<$Res> {
  __$ThunderConfigCopyWithImpl(this._self, this._then);

  final _ThunderConfig _self;
  final $Res Function(_ThunderConfig) _then;

  /// Create a copy of ThunderConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? thunderWidth = null,
    Object? blurSigma = null,
    Object? blurStyle = null,
    Object? color = null,
    Object? flashStartMill = null,
    Object? flashEndMill = null,
    Object? pauseStartMill = null,
    Object? pauseEndMill = null,
    Object? points = null,
  }) {
    return _then(_ThunderConfig(
      thunderWidth: null == thunderWidth
          ? _self.thunderWidth
          : thunderWidth // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _self.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      blurStyle: null == blurStyle
          ? _self.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      flashStartMill: null == flashStartMill
          ? _self.flashStartMill
          : flashStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      flashEndMill: null == flashEndMill
          ? _self.flashEndMill
          : flashEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseStartMill: null == pauseStartMill
          ? _self.pauseStartMill
          : pauseStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseEndMill: null == pauseEndMill
          ? _self.pauseEndMill
          : pauseEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _self._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// @nodoc
mixin _$WindConfig {
  double get width;
  double get y;
  double get windGap;
  double get blurSigma;
  Color get color;
  double get slideXStart;
  double get slideXEnd;
  int get pauseStartMill;
  int get pauseEndMill;
  int get slideDurMill;
  @ignoreJson
  BlurStyle get blurStyle;

  /// Create a copy of WindConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindConfigCopyWith<WindConfig> get copyWith =>
      _$WindConfigCopyWithImpl<WindConfig>(this as WindConfig, _$identity);

  /// Serializes this WindConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WindConfig &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.windGap, windGap) || other.windGap == windGap) &&
            (identical(other.blurSigma, blurSigma) ||
                other.blurSigma == blurSigma) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.slideXStart, slideXStart) ||
                other.slideXStart == slideXStart) &&
            (identical(other.slideXEnd, slideXEnd) ||
                other.slideXEnd == slideXEnd) &&
            (identical(other.pauseStartMill, pauseStartMill) ||
                other.pauseStartMill == pauseStartMill) &&
            (identical(other.pauseEndMill, pauseEndMill) ||
                other.pauseEndMill == pauseEndMill) &&
            (identical(other.slideDurMill, slideDurMill) ||
                other.slideDurMill == slideDurMill) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      width,
      y,
      windGap,
      blurSigma,
      color,
      slideXStart,
      slideXEnd,
      pauseStartMill,
      pauseEndMill,
      slideDurMill,
      blurStyle);

  @override
  String toString() {
    return 'WindConfig(width: $width, y: $y, windGap: $windGap, blurSigma: $blurSigma, color: $color, slideXStart: $slideXStart, slideXEnd: $slideXEnd, pauseStartMill: $pauseStartMill, pauseEndMill: $pauseEndMill, slideDurMill: $slideDurMill, blurStyle: $blurStyle)';
  }
}

/// @nodoc
abstract mixin class $WindConfigCopyWith<$Res> {
  factory $WindConfigCopyWith(
          WindConfig value, $Res Function(WindConfig) _then) =
      _$WindConfigCopyWithImpl;
  @useResult
  $Res call(
      {double width,
      double y,
      double windGap,
      double blurSigma,
      Color color,
      double slideXStart,
      double slideXEnd,
      int pauseStartMill,
      int pauseEndMill,
      int slideDurMill,
      @ignoreJson BlurStyle blurStyle});
}

/// @nodoc
class _$WindConfigCopyWithImpl<$Res> implements $WindConfigCopyWith<$Res> {
  _$WindConfigCopyWithImpl(this._self, this._then);

  final WindConfig _self;
  final $Res Function(WindConfig) _then;

  /// Create a copy of WindConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? y = null,
    Object? windGap = null,
    Object? blurSigma = null,
    Object? color = null,
    Object? slideXStart = null,
    Object? slideXEnd = null,
    Object? pauseStartMill = null,
    Object? pauseEndMill = null,
    Object? slideDurMill = null,
    Object? blurStyle = null,
  }) {
    return _then(_self.copyWith(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      windGap: null == windGap
          ? _self.windGap
          : windGap // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _self.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      slideXStart: null == slideXStart
          ? _self.slideXStart
          : slideXStart // ignore: cast_nullable_to_non_nullable
              as double,
      slideXEnd: null == slideXEnd
          ? _self.slideXEnd
          : slideXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      pauseStartMill: null == pauseStartMill
          ? _self.pauseStartMill
          : pauseStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseEndMill: null == pauseEndMill
          ? _self.pauseEndMill
          : pauseEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideDurMill: null == slideDurMill
          ? _self.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      blurStyle: null == blurStyle
          ? _self.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
    ));
  }
}

/// Adds pattern-matching-related methods to [WindConfig].
extension WindConfigPatterns on WindConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WindConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WindConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WindConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WindConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WindConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WindConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            double width,
            double y,
            double windGap,
            double blurSigma,
            Color color,
            double slideXStart,
            double slideXEnd,
            int pauseStartMill,
            int pauseEndMill,
            int slideDurMill,
            @ignoreJson BlurStyle blurStyle)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WindConfig() when $default != null:
        return $default(
            _that.width,
            _that.y,
            _that.windGap,
            _that.blurSigma,
            _that.color,
            _that.slideXStart,
            _that.slideXEnd,
            _that.pauseStartMill,
            _that.pauseEndMill,
            _that.slideDurMill,
            _that.blurStyle);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            double width,
            double y,
            double windGap,
            double blurSigma,
            Color color,
            double slideXStart,
            double slideXEnd,
            int pauseStartMill,
            int pauseEndMill,
            int slideDurMill,
            @ignoreJson BlurStyle blurStyle)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WindConfig():
        return $default(
            _that.width,
            _that.y,
            _that.windGap,
            _that.blurSigma,
            _that.color,
            _that.slideXStart,
            _that.slideXEnd,
            _that.pauseStartMill,
            _that.pauseEndMill,
            _that.slideDurMill,
            _that.blurStyle);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            double width,
            double y,
            double windGap,
            double blurSigma,
            Color color,
            double slideXStart,
            double slideXEnd,
            int pauseStartMill,
            int pauseEndMill,
            int slideDurMill,
            @ignoreJson BlurStyle blurStyle)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WindConfig() when $default != null:
        return $default(
            _that.width,
            _that.y,
            _that.windGap,
            _that.blurSigma,
            _that.color,
            _that.slideXStart,
            _that.slideXEnd,
            _that.pauseStartMill,
            _that.pauseEndMill,
            _that.slideDurMill,
            _that.blurStyle);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(converters: [ColorSerializer()])
class _WindConfig extends WindConfig {
  const _WindConfig(
      {this.width = 6.0,
      this.y = 300.0,
      this.windGap = 14.0,
      this.blurSigma = 8.0,
      this.color = const Color.fromARGB(255, 96, 125, 139),
      this.slideXStart = 0.0,
      this.slideXEnd = 500.0,
      this.pauseStartMill = 50,
      this.pauseEndMill = 6000,
      this.slideDurMill = 1000,
      @ignoreJson this.blurStyle = BlurStyle.solid})
      : super._();
  factory _WindConfig.fromJson(Map<String, dynamic> json) =>
      _$WindConfigFromJson(json);

  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double y;
  @override
  @JsonKey()
  final double windGap;
  @override
  @JsonKey()
  final double blurSigma;
  @override
  @JsonKey()
  final Color color;
  @override
  @JsonKey()
  final double slideXStart;
  @override
  @JsonKey()
  final double slideXEnd;
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
  @ignoreJson
  final BlurStyle blurStyle;

  /// Create a copy of WindConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WindConfigCopyWith<_WindConfig> get copyWith =>
      __$WindConfigCopyWithImpl<_WindConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WindConfig &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.windGap, windGap) || other.windGap == windGap) &&
            (identical(other.blurSigma, blurSigma) ||
                other.blurSigma == blurSigma) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.slideXStart, slideXStart) ||
                other.slideXStart == slideXStart) &&
            (identical(other.slideXEnd, slideXEnd) ||
                other.slideXEnd == slideXEnd) &&
            (identical(other.pauseStartMill, pauseStartMill) ||
                other.pauseStartMill == pauseStartMill) &&
            (identical(other.pauseEndMill, pauseEndMill) ||
                other.pauseEndMill == pauseEndMill) &&
            (identical(other.slideDurMill, slideDurMill) ||
                other.slideDurMill == slideDurMill) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      width,
      y,
      windGap,
      blurSigma,
      color,
      slideXStart,
      slideXEnd,
      pauseStartMill,
      pauseEndMill,
      slideDurMill,
      blurStyle);

  @override
  String toString() {
    return 'WindConfig(width: $width, y: $y, windGap: $windGap, blurSigma: $blurSigma, color: $color, slideXStart: $slideXStart, slideXEnd: $slideXEnd, pauseStartMill: $pauseStartMill, pauseEndMill: $pauseEndMill, slideDurMill: $slideDurMill, blurStyle: $blurStyle)';
  }
}

/// @nodoc
abstract mixin class _$WindConfigCopyWith<$Res>
    implements $WindConfigCopyWith<$Res> {
  factory _$WindConfigCopyWith(
          _WindConfig value, $Res Function(_WindConfig) _then) =
      __$WindConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double width,
      double y,
      double windGap,
      double blurSigma,
      Color color,
      double slideXStart,
      double slideXEnd,
      int pauseStartMill,
      int pauseEndMill,
      int slideDurMill,
      @ignoreJson BlurStyle blurStyle});
}

/// @nodoc
class __$WindConfigCopyWithImpl<$Res> implements _$WindConfigCopyWith<$Res> {
  __$WindConfigCopyWithImpl(this._self, this._then);

  final _WindConfig _self;
  final $Res Function(_WindConfig) _then;

  /// Create a copy of WindConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? width = null,
    Object? y = null,
    Object? windGap = null,
    Object? blurSigma = null,
    Object? color = null,
    Object? slideXStart = null,
    Object? slideXEnd = null,
    Object? pauseStartMill = null,
    Object? pauseEndMill = null,
    Object? slideDurMill = null,
    Object? blurStyle = null,
  }) {
    return _then(_WindConfig(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      windGap: null == windGap
          ? _self.windGap
          : windGap // ignore: cast_nullable_to_non_nullable
              as double,
      blurSigma: null == blurSigma
          ? _self.blurSigma
          : blurSigma // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      slideXStart: null == slideXStart
          ? _self.slideXStart
          : slideXStart // ignore: cast_nullable_to_non_nullable
              as double,
      slideXEnd: null == slideXEnd
          ? _self.slideXEnd
          : slideXEnd // ignore: cast_nullable_to_non_nullable
              as double,
      pauseStartMill: null == pauseStartMill
          ? _self.pauseStartMill
          : pauseStartMill // ignore: cast_nullable_to_non_nullable
              as int,
      pauseEndMill: null == pauseEndMill
          ? _self.pauseEndMill
          : pauseEndMill // ignore: cast_nullable_to_non_nullable
              as int,
      slideDurMill: null == slideDurMill
          ? _self.slideDurMill
          : slideDurMill // ignore: cast_nullable_to_non_nullable
              as int,
      blurStyle: null == blurStyle
          ? _self.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as BlurStyle,
    ));
  }
}

// dart format on
