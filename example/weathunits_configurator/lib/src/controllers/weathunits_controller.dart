import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nanoid/nanoid.dart';
import 'package:weather_animation_bg/weather_animation_bg.dart';

import '../model/models.dart';

final selectedWeathunitProvider = StateProvider<Weathunit?>((_) => null);

final listWeathunitProvider =
    StateNotifierProvider<ListWeathunitNotifier, List<Weathunit>>((ref) {
  return ListWeathunitNotifier(ref);
});

class ListWeathunitNotifier extends StateNotifier<List<Weathunit>> {
  ListWeathunitNotifier(this._ref) : super(initList);
  final Ref _ref;

  Map<String, dynamic>? get rawWeathConfig =>
      _ref.read(selectedWeathunitProvider)?.config.toJson();

  void updateRaw(MapEntry<String, dynamic> entry, Weathunit unit) {
    final newJsonConfig = unit.config.toJson()..[entry.key] = entry.value;

    final newConfig = () {
      switch (unit.type) {
        case TypeWeather.sun:
          return SunConfig.fromJson(newJsonConfig);
        case TypeWeather.rain:
          return RainConfig.fromJson(newJsonConfig);
        case TypeWeather.thunder:
          return ThunderConfig.fromJson(newJsonConfig);
        case TypeWeather.snow:
          return SnowConfig.fromJson(newJsonConfig);
        case TypeWeather.cloud:
          return CloudConfig.fromJson(newJsonConfig);
        case TypeWeather.wind:
          return WindConfig.fromJson(newJsonConfig);
      }
    }();

    final newUnit = unit.copyWith(config: newConfig);

    _ref.read(selectedWeathunitProvider.notifier).state = newUnit;

    final newState = [...state];

    newState[newState.indexWhere((element) => element.id == unit.id)] = newUnit;

    state = [...newState];
  }

  Weathunit _getWeather(TypeWeather type) {
    final id = nanoid();

    switch (type) {
      case TypeWeather.sun:
        return Weathunit(
          type: type,
          config: const SunConfig(),
          id: id,
        );
      case TypeWeather.rain:
        return Weathunit(
          type: type,
          config: const RainConfig(),
          id: id,
        );
      case TypeWeather.thunder:
        return Weathunit(
          type: type,
          config: const ThunderConfig(),
          id: id,
        );
      case TypeWeather.snow:
        return Weathunit(
          type: type,
          config: const SnowConfig(),
          id: id,
        );
      case TypeWeather.cloud:
        return Weathunit(
          type: type,
          config: const CloudConfig(),
          id: id,
        );
      case TypeWeather.wind:
        return Weathunit(
          type: type,
          config: const WindConfig(),
          id: id,
        );
    }
  }

  void copyAdd(int index, Weathunit item) {
    final list = [...state];

    list.insert(index + 1, item.copyWith(id: nanoid()));

    state = [...list];
  }

  void add(TypeWeather type) {
    final Weathunit element = _getWeather(type);

    state = [...state, element];
  }

  void move(int oldIndex, int newIndex) {
    final newState = [...state];

    int index = newIndex;
    if (oldIndex < index) {
      // removing the item at oldIndex will shorten the list by 1.
      index -= 1;
    }
    final Weathunit element = newState.removeAt(oldIndex);
    newState.insert(index, element);

    state = [...newState];
  }

  void delete(int index) {
    final newState = [...state]..removeAt(index);
    state = [...newState];
  }
}

final initList = <Weathunit>[
  Weathunit(type: TypeWeather.sun, config: const SunConfig(), id: nanoid()),
  Weathunit(type: TypeWeather.cloud, config: const CloudConfig(), id: nanoid()),
  Weathunit(type: TypeWeather.rain, config: const RainConfig(), id: nanoid()),
  Weathunit(
      type: TypeWeather.thunder, config: const ThunderConfig(), id: nanoid()),
  Weathunit(type: TypeWeather.wind, config: const WindConfig(), id: nanoid()),
  // Weathunit(type: TypeWeather.snow, config: const SnowConfig(), id: nanoid()),
];
