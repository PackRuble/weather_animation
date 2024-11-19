## [1.1.1] - 19-11-2024

- fix: in `WrapperScene.weather` now `decoration` parameter defaults to `BoxDecoration()`, and `clip=Clip.antiAlias`. Close [#15](https://github.com/PackRuble/weather_animation/issues/15)
- add: application `weather_scenes` as example for easy launch:
  - `dart pub unpack weather_animation:1.1.1: --output=archives` (available in dart ^3.4)
  - `cd .\archives\weather_animation-1.1.1\example\weather_scenes\`
  - `flutter run` (select device)

## [1.1.0] - 20-08-2024
- 🧨del: `WeatherScene.getWeather` and `getWeatherScene`
- 🧨add: use `WrapperScene.weather` instead of `WeatherSceneWidget`
- add: all weather widgets can accept `null`-config as a parameter
- upd: all weather widgets have been refactored and optimized
- upd: dart sdk `^3.0.0`

## [1.0.1] - 27-10-2023
- new: use getter `WeatherScene.sceneWidget` instead of `getWeather` method
- new: use `WeatherSceneWidget` instead of `getWeatherScene` method

## [1.0.0] - 04-10-2023

- upd: raise upper bound dart sdk: ">=2.17.0 <4.0.0"
- upd: dependencies
- upd: rebuild models
- upd and deploy configurator

## [0.0.2] - 09-01-2023

- [Weathunits configurator](https://packruble.github.io/weather_animation/) app now available on the web
- fix issue #7, when the `weathunits_configurator` did not 
work correctly on the web
- update some dependencies
- add visual resources to documentation, styling of the package was adjusted, 
link to telegram [channel](https://t.me/+AkGV73kZi_Q1YTMy) is attached

## [0.0.1] - 25-11-2022

- hello pub!