import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Class represent controller.
class MainController {
  MainController(this._ref);

  final Ref _ref;

  /// Instance of class [MainController].
  static final instance = Provider.autoDispose(
    MainController.new,
    name: '$MainController',
  );

  /// View the scene in full screen.
  static final onFullScreen = StateProvider<bool>((ref) => false);

  /// Size canvas.
  static final sizeCanvas = StateProvider<Size>(
    (ref) => Size(
      ref.watch(widthCanvas),
      ref.watch(heightCanvas),
    ),
    name: 'sizeCanvas',
  );

  /// Width canvas.
  static final widthCanvas = StateProvider<double>(
    (_) => 350.0,
    name: 'widthCanvas',
  );

  /// Height canvas.
  static final heightCanvas = StateProvider<double>(
    (_) => 540.0,
    name: 'heightCanvas',
  );

  static final forcedUpdate = Provider<UniqueKey>((ref) => UniqueKey());
}
