import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nanoid/nanoid.dart';
import 'package:weather_animation/weather_animation.dart';
import 'package:weathunits_configurator/src/controllers/main_controller.dart';

import '../model/models.dart';

final selectedWeathunitProvider = StateProvider<Weathunit?>((ref) {
  ref.watch(MainController.selectedScene);
  return null;
});

final listWeathunitProvider =
    StateNotifierProvider<ListWeathunitNotifier, List<Weathunit>>((ref) {
  final sceneWidget = ref.watch(MainController.selectedWidgetScene);
  final scene =
      sceneWidget != null ? _parseWeathunit(sceneWidget) : <Weathunit>[];

  return ListWeathunitNotifier(ref, scene);
});

class ListWeathunitNotifier extends StateNotifier<List<Weathunit>> {
  ListWeathunitNotifier(this._ref, List<Weathunit> scene) : super(scene);
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

List<Weathunit> _parseWeathunit(WrapperScene scene) {
  final result = <Weathunit>[];
  for (final item in scene.children) {
    final unit = () {
      switch (item.runtimeType) {
        case SunWidget:
          return Weathunit(
            type: TypeWeather.sun,
            config: (item as SunWidget).sunConfig,
            id: nanoid(),
          );
        case RainsWidget:
          return Weathunit(
            type: TypeWeather.rain,
            config: (item as RainsWidget).rainConfig,
            id: nanoid(),
          );
        case ThundersWidget:
          return Weathunit(
            type: TypeWeather.thunder,
            config: (item as ThundersWidget).thunderConfig,
            id: nanoid(),
          );
        case SnowWidget:
          return Weathunit(
            type: TypeWeather.snow,
            config: (item as SnowWidget).snowConfig,
            id: nanoid(),
          );
        case CloudWidget:
          return Weathunit(
            type: TypeWeather.cloud,
            config: (item as CloudWidget).cloudConfig,
            id: nanoid(),
          );
        case WindWidget:
          return Weathunit(
            type: TypeWeather.wind,
            config: (item as WindWidget).windConfig,
            id: nanoid(),
          );
      }
    }();

    if (unit != null) {
      result.add(unit);
    }
  }

  return result;
}
