import 'package:flutter/foundation.dart';
import 'package:weather_animation_bg/weather_animation_bg.dart';

enum TypeWeather { sun, rain, thunder, snow, cloud, wind }

@immutable
class Weathunit {
  const Weathunit({required this.type, required this.id, required this.config});

  final TypeWeather type;

  final WeatherConfig config;

  final String id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Weathunit && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  Weathunit copyWith({
    TypeWeather? type,
    WeatherConfig? config,
    String? id,
  }) {
    return Weathunit(
      type: type ?? this.type,
      config: config ?? this.config,
      id: id ?? this.id,
    );
  }
}
