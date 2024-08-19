import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_animation/weather_animation.dart';

/// Class represent controller.
class MainController {
  MainController(this._ref);

  // ignore: unused_field
  final Ref _ref;

  /// Instance of class [MainController].
  static final instance = Provider.autoDispose(
    MainController.new,
    name: '$MainController',
  );

  /// View the scene in full screen.
  static final onFullScreen = StateProvider<bool>((ref) => false);

  /// Size canvas.
  static final sizeCanvas = Provider<Size>(
    (ref) => Size(
      ref.watch(widthCanvas),
      ref.watch(heightCanvas),
    ),
    name: 'sizeCanvas',
  );

  /// Width canvas.
  static final widthCanvas = StateProvider<double>(
    (ref) => ref.watch(selectedWidgetScene)?.sizeCanvas.width ?? 350.0,
    name: 'widthCanvas',
  );

  /// Height canvas.
  static final heightCanvas = StateProvider<double>(
    (ref) => ref.watch(selectedWidgetScene)?.sizeCanvas.height ?? 540.0,
    name: 'heightCanvas',
  );

  static final selectedWidgetScene = Provider<WrapperScene?>((ref) {
    final scene = ref.watch(selectedScene);
    return scene != null ? WrapperScene.weather(scene: scene) : null;
  });

  static final selectedScene =
      StateProvider<WeatherScene?>((_) => WeatherScene.sunset);

  static final allScenes =
      Provider<List<WeatherScene>>((_) => WeatherScene.values);

  static final forcedUpdate = Provider<UniqueKey>((ref) => UniqueKey());
}
