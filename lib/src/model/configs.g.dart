// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SunConfig _$$_SunConfigFromJson(Map<String, dynamic> json) => _$_SunConfig(
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
      animMidMill: json['animMidMill'] as int? ?? 1500,
      animOutMill: json['animOutMill'] as int? ?? 1500,
    );

Map<String, dynamic> _$$_SunConfigToJson(_$_SunConfig instance) =>
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

_$_SnowflakeConfig _$$_SnowflakeConfigFromJson(Map<String, dynamic> json) =>
    _$_SnowflakeConfig(
      count: json['count'] as int? ?? 50,
      size: (json['size'] as num?)?.toDouble() ?? 20.0,
      color: json['color'] == null
          ? const Color.fromARGB(179, 255, 255, 255)
          : const ColorSerializer().fromJson(json['color'] as String),
      areaXStart: (json['areaXStart'] as num?)?.toDouble() ?? 30.0,
      areaXEnd: (json['areaXEnd'] as num?)?.toDouble() ?? 220.0,
      areaYStart: (json['areaYStart'] as num?)?.toDouble() ?? 200.0,
      areaYEnd: (json['areaYEnd'] as num?)?.toDouble() ?? 620.0,
      waveRangeMin: (json['waveRangeMin'] as num?)?.toDouble() ?? 20.0,
      waveRangeMax: (json['waveRangeMax'] as num?)?.toDouble() ?? 110.0,
      waveMinSec: json['waveMinSec'] as int? ?? 5,
      waveMaxSec: json['waveMaxSec'] as int? ?? 20,
      fallMinSec: json['fallMinSec'] as int? ?? 10,
      fallMaxSec: json['fallMaxSec'] as int? ?? 60,
    );

Map<String, dynamic> _$$_SnowflakeConfigToJson(_$_SnowflakeConfig instance) =>
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

_$_CloudConfig _$$_CloudConfigFromJson(Map<String, dynamic> json) =>
    _$_CloudConfig(
      size: (json['size'] as num?)?.toDouble() ?? 250.0,
      color: json['color'] == null
          ? const Color.fromARGB(179, 255, 255, 255)
          : const ColorSerializer().fromJson(json['color'] as String),
      x: (json['x'] as num?)?.toDouble() ?? 20.0,
      y: (json['y'] as num?)?.toDouble() ?? 150.0,
      scaleBegin: (json['scaleBegin'] as num?)?.toDouble() ?? 1.0,
      scaleEnd: (json['scaleEnd'] as num?)?.toDouble() ?? 1.1,
      slideX: (json['slideX'] as num?)?.toDouble() ?? 11.0,
      slideY: (json['slideY'] as num?)?.toDouble() ?? 0.0,
      slideDurMill: json['slideDurMill'] as int? ?? 2000,
    );

Map<String, dynamic> _$$_CloudConfigToJson(_$_CloudConfig instance) =>
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

_$_RainConfig _$$_RainConfigFromJson(Map<String, dynamic> json) =>
    _$_RainConfig(
      count: json['count'] as int? ?? 20,
      color: json['color'] == null
          ? const Color.fromARGB(153, 120, 144, 156)
          : const ColorSerializer().fromJson(json['color'] as String),
      lengthDrop: (json['lengthDrop'] as num?)?.toDouble() ?? 16.0,
      widthDrop: (json['widthDrop'] as num?)?.toDouble() ?? 5.0,
      isRoundedEndsDrop: json['isRoundedEndsDrop'] as bool? ?? true,
      fallRangeMinDurMill: json['fallRangeMinDurMill'] as int? ?? 500,
      fallRangeMaxDurMill: json['fallRangeMaxDurMill'] as int? ?? 1500,
      areaXStart: (json['areaXStart'] as num?)?.toDouble() ?? 55.0,
      areaXEnd: (json['areaXEnd'] as num?)?.toDouble() ?? 215.0,
      areaYStart: (json['areaYStart'] as num?)?.toDouble() ?? 215.0,
      areaYEnd: (json['areaYEnd'] as num?)?.toDouble() ?? 620.0,
      slideX: (json['slideX'] as num?)?.toDouble() ?? 2.0,
      slideY: (json['slideY'] as num?)?.toDouble() ?? 0.0,
      slideDurMill: json['slideDurMill'] as int? ?? 2000,
    );

Map<String, dynamic> _$$_RainConfigToJson(_$_RainConfig instance) =>
    <String, dynamic>{
      'count': instance.count,
      'color': const ColorSerializer().toJson(instance.color),
      'lengthDrop': instance.lengthDrop,
      'widthDrop': instance.widthDrop,
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

_$_ThunderConfig _$$_ThunderConfigFromJson(Map<String, dynamic> json) =>
    _$_ThunderConfig(
      thunderWidth: (json['thunderWidth'] as num?)?.toDouble() ?? 10.0,
      color: json['color'] == null
          ? const Color.fromARGB(153, 255, 238, 88)
          : const ColorSerializer().fromJson(json['color'] as String),
      flashStartMill: json['flashStartMill'] as int? ?? 50,
      flashEndMill: json['flashEndMill'] as int? ?? 300,
      pauseStartMill: json['pauseStartMill'] as int? ?? 50,
      pauseEndMill: json['pauseEndMill'] as int? ?? 6000,
      blurSigma: (json['blurSigma'] as num?)?.toDouble() ?? 10.0,
    );

Map<String, dynamic> _$$_ThunderConfigToJson(_$_ThunderConfig instance) =>
    <String, dynamic>{
      'thunderWidth': instance.thunderWidth,
      'color': const ColorSerializer().toJson(instance.color),
      'flashStartMill': instance.flashStartMill,
      'flashEndMill': instance.flashEndMill,
      'pauseStartMill': instance.pauseStartMill,
      'pauseEndMill': instance.pauseEndMill,
      'blurSigma': instance.blurSigma,
    };

_$_WindConfig _$$_WindConfigFromJson(Map<String, dynamic> json) =>
    _$_WindConfig(
      pauseStartMill: json['pauseStartMill'] as int? ?? 50,
      pauseEndMill: json['pauseEndMill'] as int? ?? 6000,
      slideDurMill: json['slideDurMill'] as int? ?? 1000,
      slideXStart: (json['slideXStart'] as num?)?.toDouble() ?? 0.0,
      slideXEnd: (json['slideXEnd'] as num?)?.toDouble() ?? 500.0,
      color: json['color'] == null
          ? const Color.fromARGB(255, 96, 125, 139)
          : const ColorSerializer().fromJson(json['color'] as String),
      width: (json['width'] as num?)?.toDouble() ?? 8.0,
      y: (json['y'] as num?)?.toDouble() ?? 300.0,
      windGust: (json['windGust'] as num?)?.toDouble() ?? 15.0,
      blurSigma: (json['blurSigma'] as num?)?.toDouble() ?? 8.0,
    );

Map<String, dynamic> _$$_WindConfigToJson(_$_WindConfig instance) =>
    <String, dynamic>{
      'pauseStartMill': instance.pauseStartMill,
      'pauseEndMill': instance.pauseEndMill,
      'slideDurMill': instance.slideDurMill,
      'slideXStart': instance.slideXStart,
      'slideXEnd': instance.slideXEnd,
      'color': const ColorSerializer().toJson(instance.color),
      'width': instance.width,
      'y': instance.y,
      'windGust': instance.windGust,
      'blurSigma': instance.blurSigma,
    };
