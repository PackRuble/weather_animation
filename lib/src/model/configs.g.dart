// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SunConfigImpl _$$SunConfigImplFromJson(Map<String, dynamic> json) =>
    _$SunConfigImpl(
      width: (json['width'] as num?)?.toDouble() ?? 360.0,
      blurSigma: (json['blurSigma'] as num?)?.toDouble() ?? 13.0,
      isLeftLocation: json['isLeftLocation'] as bool? ?? true,
      coreColor: json['coreColor'] == null
          ? const Color.fromARGB(255, 255, 152, 0)
          : const ColorSerializer().fromJson(json['coreColor'] as String),
      midColor: json['midColor'] == null
          ? const Color.fromARGB(255, 255, 238, 88)
          : const ColorSerializer().fromJson(json['midColor'] as String),
      outColor: json['outColor'] == null
          ? const Color.fromARGB(255, 255, 167, 38)
          : const ColorSerializer().fromJson(json['outColor'] as String),
      animMidMill: (json['animMidMill'] as num?)?.toInt() ?? 1500,
      animOutMill: (json['animOutMill'] as num?)?.toInt() ?? 1500,
    );

Map<String, dynamic> _$$SunConfigImplToJson(_$SunConfigImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'blurSigma': instance.blurSigma,
      'isLeftLocation': instance.isLeftLocation,
      'coreColor': const ColorSerializer().toJson(instance.coreColor),
      'midColor': const ColorSerializer().toJson(instance.midColor),
      'outColor': const ColorSerializer().toJson(instance.outColor),
      'animMidMill': instance.animMidMill,
      'animOutMill': instance.animOutMill,
    };

_$SnowflakeConfigImpl _$$SnowflakeConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$SnowflakeConfigImpl(
      count: (json['count'] as num?)?.toInt() ?? 20,
      size: (json['size'] as num?)?.toDouble() ?? 20.0,
      color: json['color'] == null
          ? const Color.fromARGB(179, 255, 255, 255)
          : const ColorSerializer().fromJson(json['color'] as String),
      areaXStart: (json['areaXStart'] as num?)?.toDouble() ?? 90.0,
      areaXEnd: (json['areaXEnd'] as num?)?.toDouble() ?? 230.0,
      areaYStart: (json['areaYStart'] as num?)?.toDouble() ?? 200.0,
      areaYEnd: (json['areaYEnd'] as num?)?.toDouble() ?? 540.0,
      waveRangeMin: (json['waveRangeMin'] as num?)?.toDouble() ?? 20.0,
      waveRangeMax: (json['waveRangeMax'] as num?)?.toDouble() ?? 110.0,
      waveMinSec: (json['waveMinSec'] as num?)?.toInt() ?? 5,
      waveMaxSec: (json['waveMaxSec'] as num?)?.toInt() ?? 20,
      fallMinSec: (json['fallMinSec'] as num?)?.toInt() ?? 10,
      fallMaxSec: (json['fallMaxSec'] as num?)?.toInt() ?? 60,
    );

Map<String, dynamic> _$$SnowflakeConfigImplToJson(
        _$SnowflakeConfigImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'size': instance.size,
      'color': const ColorSerializer().toJson(instance.color),
      'areaXStart': instance.areaXStart,
      'areaXEnd': instance.areaXEnd,
      'areaYStart': instance.areaYStart,
      'areaYEnd': instance.areaYEnd,
      'waveRangeMin': instance.waveRangeMin,
      'waveRangeMax': instance.waveRangeMax,
      'waveMinSec': instance.waveMinSec,
      'waveMaxSec': instance.waveMaxSec,
      'fallMinSec': instance.fallMinSec,
      'fallMaxSec': instance.fallMaxSec,
    };

_$CloudConfigImpl _$$CloudConfigImplFromJson(Map<String, dynamic> json) =>
    _$CloudConfigImpl(
      size: (json['size'] as num?)?.toDouble() ?? 250.0,
      color: json['color'] == null
          ? const Color.fromARGB(170, 255, 255, 255)
          : const ColorSerializer().fromJson(json['color'] as String),
      x: (json['x'] as num?)?.toDouble() ?? 70.0,
      y: (json['y'] as num?)?.toDouble() ?? 5.0,
      scaleBegin: (json['scaleBegin'] as num?)?.toDouble() ?? 1.0,
      scaleEnd: (json['scaleEnd'] as num?)?.toDouble() ?? 1.1,
      slideX: (json['slideX'] as num?)?.toDouble() ?? 11.0,
      slideY: (json['slideY'] as num?)?.toDouble() ?? 5.0,
      slideDurMill: (json['slideDurMill'] as num?)?.toInt() ?? 2000,
    );

Map<String, dynamic> _$$CloudConfigImplToJson(_$CloudConfigImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'color': const ColorSerializer().toJson(instance.color),
      'x': instance.x,
      'y': instance.y,
      'scaleBegin': instance.scaleBegin,
      'scaleEnd': instance.scaleEnd,
      'slideX': instance.slideX,
      'slideY': instance.slideY,
      'slideDurMill': instance.slideDurMill,
    };

_$RainConfigImpl _$$RainConfigImplFromJson(Map<String, dynamic> json) =>
    _$RainConfigImpl(
      count: (json['count'] as num?)?.toInt() ?? 10,
      lengthDrop: (json['lengthDrop'] as num?)?.toDouble() ?? 12.0,
      widthDrop: (json['widthDrop'] as num?)?.toDouble() ?? 4.0,
      color: json['color'] == null
          ? const Color.fromARGB(153, 120, 144, 156)
          : const ColorSerializer().fromJson(json['color'] as String),
      isRoundedEndsDrop: json['isRoundedEndsDrop'] as bool? ?? true,
      fallRangeMinDurMill:
          (json['fallRangeMinDurMill'] as num?)?.toInt() ?? 500,
      fallRangeMaxDurMill:
          (json['fallRangeMaxDurMill'] as num?)?.toInt() ?? 1500,
      areaXStart: (json['areaXStart'] as num?)?.toDouble() ?? 120.0,
      areaXEnd: (json['areaXEnd'] as num?)?.toDouble() ?? 190.0,
      areaYStart: (json['areaYStart'] as num?)?.toDouble() ?? 215.0,
      areaYEnd: (json['areaYEnd'] as num?)?.toDouble() ?? 540.0,
      slideX: (json['slideX'] as num?)?.toDouble() ?? 2.0,
      slideY: (json['slideY'] as num?)?.toDouble() ?? 0.0,
      slideDurMill: (json['slideDurMill'] as num?)?.toInt() ?? 2000,
    );

Map<String, dynamic> _$$RainConfigImplToJson(_$RainConfigImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'lengthDrop': instance.lengthDrop,
      'widthDrop': instance.widthDrop,
      'color': const ColorSerializer().toJson(instance.color),
      'isRoundedEndsDrop': instance.isRoundedEndsDrop,
      'fallRangeMinDurMill': instance.fallRangeMinDurMill,
      'fallRangeMaxDurMill': instance.fallRangeMaxDurMill,
      'areaXStart': instance.areaXStart,
      'areaXEnd': instance.areaXEnd,
      'areaYStart': instance.areaYStart,
      'areaYEnd': instance.areaYEnd,
      'slideX': instance.slideX,
      'slideY': instance.slideY,
      'slideDurMill': instance.slideDurMill,
    };

_$ThunderConfigImpl _$$ThunderConfigImplFromJson(Map<String, dynamic> json) =>
    _$ThunderConfigImpl(
      thunderWidth: (json['thunderWidth'] as num?)?.toDouble() ?? 10.0,
      blurSigma: (json['blurSigma'] as num?)?.toDouble() ?? 13.0,
      color: json['color'] == null
          ? const Color.fromARGB(153, 255, 238, 88)
          : const ColorSerializer().fromJson(json['color'] as String),
      flashStartMill: (json['flashStartMill'] as num?)?.toInt() ?? 50,
      flashEndMill: (json['flashEndMill'] as num?)?.toInt() ?? 300,
      pauseStartMill: (json['pauseStartMill'] as num?)?.toInt() ?? 50,
      pauseEndMill: (json['pauseEndMill'] as num?)?.toInt() ?? 6000,
    );

Map<String, dynamic> _$$ThunderConfigImplToJson(_$ThunderConfigImpl instance) =>
    <String, dynamic>{
      'thunderWidth': instance.thunderWidth,
      'blurSigma': instance.blurSigma,
      'color': const ColorSerializer().toJson(instance.color),
      'flashStartMill': instance.flashStartMill,
      'flashEndMill': instance.flashEndMill,
      'pauseStartMill': instance.pauseStartMill,
      'pauseEndMill': instance.pauseEndMill,
    };

_$WindConfigImpl _$$WindConfigImplFromJson(Map<String, dynamic> json) =>
    _$WindConfigImpl(
      width: (json['width'] as num?)?.toDouble() ?? 6.0,
      y: (json['y'] as num?)?.toDouble() ?? 300.0,
      windGap: (json['windGap'] as num?)?.toDouble() ?? 14.0,
      blurSigma: (json['blurSigma'] as num?)?.toDouble() ?? 8.0,
      color: json['color'] == null
          ? const Color.fromARGB(255, 96, 125, 139)
          : const ColorSerializer().fromJson(json['color'] as String),
      slideXStart: (json['slideXStart'] as num?)?.toDouble() ?? 0.0,
      slideXEnd: (json['slideXEnd'] as num?)?.toDouble() ?? 500.0,
      pauseStartMill: (json['pauseStartMill'] as num?)?.toInt() ?? 50,
      pauseEndMill: (json['pauseEndMill'] as num?)?.toInt() ?? 6000,
      slideDurMill: (json['slideDurMill'] as num?)?.toInt() ?? 1000,
    );

Map<String, dynamic> _$$WindConfigImplToJson(_$WindConfigImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'y': instance.y,
      'windGap': instance.windGap,
      'blurSigma': instance.blurSigma,
      'color': const ColorSerializer().toJson(instance.color),
      'slideXStart': instance.slideXStart,
      'slideXEnd': instance.slideXEnd,
      'pauseStartMill': instance.pauseStartMill,
      'pauseEndMill': instance.pauseEndMill,
      'slideDurMill': instance.slideDurMill,
    };
