// Copyright (c) 2022-2023 PackRuble
//
// Use of this source code is governed by the license found in the LICENSE file.

/// Delightful animation of weather conditions with flutter capabilities.
library weather_animation;

// ignore_for_file: directives_ordering

export 'src/background_widget.dart';
// models
export 'src/model/configs.dart';
// scenes
export 'src/model/scenes.dart'
    show WeatherScene, WeatherSceneWidget, getWeatherScene;
// widgets
export 'src/weather_widgets/all_widgets.dart';
export 'src/wrapper_scene_widget.dart';
