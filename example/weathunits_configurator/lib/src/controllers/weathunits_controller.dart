// ignore_for_file: prefer_final_locals

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

    final newConfig = switch (unit.type) {
      TypeWeather.sun => SunConfig.fromJson(newJsonConfig),
      TypeWeather.rain => RainConfig.fromJson(newJsonConfig),
      TypeWeather.thunder => ThunderConfig.fromJson(newJsonConfig),
      TypeWeather.snow => SnowConfig.fromJson(newJsonConfig),
      TypeWeather.cloud => CloudConfig.fromJson(newJsonConfig),
      TypeWeather.wind => WindConfig.fromJson(newJsonConfig)
    };

    final newUnit = unit.copyWith(config: newConfig);

    _ref.read(selectedWeathunitProvider.notifier).state = newUnit;

    final newState = [...state];

    newState[newState.indexWhere((element) => element.id == unit.id)] = newUnit;

    state = [...newState];
  }

  Weathunit _getWeather(TypeWeather type) {
    return Weathunit(
      type: type,
      config: switch (type) {
        TypeWeather.sun => const SunConfig(),
        TypeWeather.rain => const RainConfig(),
        TypeWeather.thunder => const ThunderConfig(),
        TypeWeather.snow => const SnowConfig(),
        TypeWeather.cloud => const CloudConfig(),
        TypeWeather.wind => const WindConfig(),
      },
      id: nanoid(),
    );
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
  return [
    for (final item in scene.children)
      switch (item.runtimeType) {
        const (SunWidget) => Weathunit(
            type: TypeWeather.sun,
            config: (item as SunWidget).sunConfig,
            id: nanoid(),
          ),
        const (RainWidget) => Weathunit(
            type: TypeWeather.rain,
            config: (item as RainWidget).rainConfig,
            id: nanoid(),
          ),
        const (ThunderWidget) => Weathunit(
            type: TypeWeather.thunder,
            config: (item as ThunderWidget).thunderConfig,
            id: nanoid(),
          ),
        const (SnowWidget) => Weathunit(
            type: TypeWeather.snow,
            config: (item as SnowWidget).snowConfig,
            id: nanoid(),
          ),
        const (CloudWidget) => Weathunit(
            type: TypeWeather.cloud,
            config: (item as CloudWidget).cloudConfig,
            id: nanoid(),
          ),
        const (WindWidget) => Weathunit(
            type: TypeWeather.wind,
            config: (item as WindWidget).windConfig,
            id: nanoid(),
          ),
        _ => throw '',
      }
  ];
}
