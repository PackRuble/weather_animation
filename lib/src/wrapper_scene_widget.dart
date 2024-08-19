// ignore_for_file: avoid_redundant_argument_values
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:weather_animation/src/model/scenes.dart';

import 'background_widget.dart';
import 'model/configs.dart';
import 'weather_widgets/all_widgets.dart';

/// A very handy wrapper for positioning the scene and placing weather widgets
/// on it. Applies smart scaling so that your weather widgets are placed evenly
/// across the screen parameters provided.
class WrapperScene extends StatelessWidget {
  const WrapperScene({
    Key? key,
    this.sizeCanvas = const Size(350.0, 540.0),
    this.decoration = const BoxDecoration(),
    this.clip = Clip.antiAlias,
    this.isLeftCornerGradient,
    required this.children,
    required this.colors,
  }) : super(key: key);

  factory WrapperScene.weather({
    required WeatherScene scene,
    Key? key,
    Size? sizeCanvas,
    Decoration? decoration,
    Clip? clip,
    bool? isLeftCornerGradient,
    List<Color>? colors,
  }) {
    return WrapperScene(
      key: key,
      sizeCanvas: sizeCanvas ?? const Size(350.0, 540.0),
      isLeftCornerGradient: isLeftCornerGradient ??
          switch (scene) {
            WeatherScene.scorchingSun || WeatherScene.stormy => false,
            _ => true,
          },
      decoration: decoration,
      clip: clip ?? Clip.antiAlias,
      colors: colors ??
          switch (scene) {
            WeatherScene.scorchingSun => [
                const Color(0xffd50000),
                const Color(0xffffd54f),
              ],
            WeatherScene.sunset => [
                const Color(0xff283593),
                const Color(0xffff8a65),
              ],
            WeatherScene.frosty => [
                const Color(0xff303f9f),
                const Color(0xff1e88e5),
                const Color(0xffbdbdbd),
              ],
            WeatherScene.snowfall => [
                const Color(0xff3949ab),
                const Color(0xff90caf9),
                const Color(0xffd6d6d6),
              ],
            WeatherScene.showerSleet => [
                const Color(0xff37474f),
                const Color(0xff546e7a),
                const Color(0xffbdbdbd),
                const Color(0xff90a4ae),
                const Color(0xff78909c),
              ],
            WeatherScene.stormy => [
                const Color(0xff263238),
                const Color(0xff78909c),
              ],
            WeatherScene.rainyOvercast => [
                const Color(0xff424242),
                const Color(0xffcfd8dc),
              ],
            WeatherScene.weatherEvery => [
                const Color(0xff1976d2),
                const Color(0xffe1f5fe),
              ],
          },
      children: switch (scene) {
        WeatherScene.scorchingSun => [
            const SunWidget(
              sunConfig: SunConfig(
                  width: 360.0,
                  blurSigma: 17.0,
                  blurStyle: BlurStyle.solid,
                  isLeftLocation: true,
                  coreColor: Color(0xfff57c00),
                  midColor: Color(0xffffee58),
                  outColor: Color(0xffffa726),
                  animMidMill: 1500,
                  animOutMill: 1500),
            ),
          ],
        WeatherScene.sunset => [
            const SunWidget(
              sunConfig: SunConfig(
                  width: 262.0,
                  blurSigma: 10.0,
                  blurStyle: BlurStyle.solid,
                  isLeftLocation: true,
                  coreColor: Color(0xffffa726),
                  midColor: Color(0xd6ffee58),
                  outColor: Color(0xffff9800),
                  animMidMill: 2000,
                  animOutMill: 2000),
            ),
            const WindWidget(
              windConfig: WindConfig(
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  slideDurMill: 1000,
                  slideXStart: 0.0,
                  slideXEnd: 350.0,
                  color: Color(0xff607d8b),
                  width: 5.0,
                  y: 208.0,
                  windGap: 10.0,
                  blurSigma: 6.0,
                  blurStyle: BlurStyle.solid),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 250.0,
                  color: Color(0x65212121),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 20.0,
                  y: 35.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.08,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 0.0,
                  slideDurMill: 3000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 160.0,
                  color: Color(0x77212121),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 140.0,
                  y: 130.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.1,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 4.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const WindWidget(
              windConfig: WindConfig(
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  slideDurMill: 1000,
                  slideXStart: 0.0,
                  slideXEnd: 350.0,
                  color: Color(0xff607d8b),
                  width: 7.0,
                  y: 300.0,
                  windGap: 15.0,
                  blurSigma: 7.0,
                  blurStyle: BlurStyle.solid),
            ),
          ],
        WeatherScene.frosty => [
            const SunWidget(
              sunConfig: SunConfig(
                  width: 300.0,
                  blurSigma: 8.0,
                  blurStyle: BlurStyle.solid,
                  isLeftLocation: true,
                  coreColor: Color(0xffffb74d),
                  midColor: Color(0xffffff8d),
                  outColor: Color(0xffffd180),
                  animMidMill: 2000,
                  animOutMill: 2000),
            ),
            const SnowWidget(
              snowConfig: SnowConfig(
                  count: 30,
                  size: 20.0,
                  color: Color(0xb3ffffff),
                  icon: IconData(57399, fontFamily: 'MaterialIcons'),
                  widgetSnowflake: null,
                  areaXStart: 42.0,
                  areaXEnd: 240.0,
                  areaYStart: 200.0,
                  areaYEnd: 540.0,
                  waveRangeMin: 20.0,
                  waveRangeMax: 70.0,
                  waveMinSec: 5,
                  waveMaxSec: 20,
                  waveCurve: Cubic(0.45, 0.05, 0.55, 0.95),
                  fadeCurve: Cubic(0.60, 0.04, 0.98, 0.34),
                  fallMinSec: 10,
                  fallMaxSec: 60),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 250.0,
                  color: Color(0xa8fafafa),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 20.0,
                  y: 3.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.08,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 0.0,
                  slideDurMill: 3000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 160.0,
                  color: Color(0xa8fafafa),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 140.0,
                  y: 97.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.1,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 4.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
          ],
        WeatherScene.snowfall => [
            const SnowWidget(
              snowConfig: SnowConfig(
                  count: 30,
                  size: 20.0,
                  color: Color(0xb3ffffff),
                  icon: IconData(57399, fontFamily: 'MaterialIcons'),
                  widgetSnowflake: null,
                  areaXStart: 42.0,
                  areaXEnd: 240.0,
                  areaYStart: 200.0,
                  areaYEnd: 540.0,
                  waveRangeMin: 20.0,
                  waveRangeMax: 70.0,
                  waveMinSec: 5,
                  waveMaxSec: 20,
                  waveCurve: Cubic(0.45, 0.05, 0.55, 0.95),
                  fadeCurve: Cubic(0.60, 0.04, 0.98, 0.34),
                  fallMinSec: 10,
                  fallMaxSec: 60),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 250.0,
                  color: Color(0xa8fafafa),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 20.0,
                  y: 3.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.08,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 0.0,
                  slideDurMill: 3000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 160.0,
                  color: Color(0xa8fafafa),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 140.0,
                  y: 97.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.1,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 4.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
          ],
        WeatherScene.showerSleet => [
            const WindWidget(
              windConfig: WindConfig(
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  slideDurMill: 1000,
                  slideXStart: 0.0,
                  slideXEnd: 350.0,
                  color: Color(0xff607d8b),
                  width: 5.0,
                  y: 208.0,
                  windGap: 10.0,
                  blurSigma: 6.0,
                  blurStyle: BlurStyle.solid),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 250.0,
                  color: Color(0xa8fafafa),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 20.0,
                  y: 3.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.08,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 0.0,
                  slideDurMill: 3000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const WindWidget(
              windConfig: WindConfig(
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  slideDurMill: 1000,
                  slideXStart: 0.0,
                  slideXEnd: 350.0,
                  color: Color(0xff607d8b),
                  width: 7.0,
                  y: 300.0,
                  windGap: 15.0,
                  blurSigma: 7.0,
                  blurStyle: BlurStyle.solid),
            ),
            const SnowWidget(
              snowConfig: SnowConfig(
                  count: 30,
                  size: 20.0,
                  color: Color(0xb3ffffff),
                  icon: IconData(57399, fontFamily: 'MaterialIcons'),
                  widgetSnowflake: null,
                  areaXStart: 21.0,
                  areaXEnd: 195.0,
                  areaYStart: 200.0,
                  areaYEnd: 540.0,
                  waveRangeMin: 20.0,
                  waveRangeMax: 70.0,
                  waveMinSec: 5,
                  waveMaxSec: 20,
                  waveCurve: Cubic(0.45, 0.05, 0.55, 0.95),
                  fadeCurve: Cubic(0.60, 0.04, 0.98, 0.34),
                  fallMinSec: 10,
                  fallMaxSec: 60),
            ),
            const RainWidget(
              rainConfig: RainConfig(
                  count: 10,
                  color: Color(0x9978909c),
                  lengthDrop: 13.0,
                  widthDrop: 4.0,
                  isRoundedEndsDrop: true,
                  widgetRainDrop: null,
                  fallRangeMinDurMill: 500,
                  fallRangeMaxDurMill: 1500,
                  areaXStart: 160.0,
                  areaXEnd: 150.0,
                  areaYStart: 230.0,
                  areaYEnd: 620.0,
                  slideX: 2.0,
                  slideY: 0.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  fallCurve: Cubic(0.55, 0.09, 0.68, 0.53),
                  fadeCurve: Cubic(0.95, 0.05, 0.80, 0.04)),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 160.0,
                  color: Color(0xa8fafafa),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 140.0,
                  y: 97.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.1,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 4.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
          ],
        WeatherScene.stormy => [
            const WindWidget(
              windConfig: WindConfig(
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  slideDurMill: 1000,
                  slideXStart: 0.0,
                  slideXEnd: 350.0,
                  color: Color(0xff607d8b),
                  width: 5.0,
                  y: 208.0,
                  windGap: 10.0,
                  blurSigma: 6.0,
                  blurStyle: BlurStyle.solid),
            ),
            const RainWidget(
              rainConfig: RainConfig(
                  count: 40,
                  color: Color(0x9978909c),
                  lengthDrop: 13.0,
                  widthDrop: 4.0,
                  isRoundedEndsDrop: true,
                  widgetRainDrop: null,
                  fallRangeMinDurMill: 500,
                  fallRangeMaxDurMill: 1500,
                  areaXStart: 41.0,
                  areaXEnd: 264.0,
                  areaYStart: 208.0,
                  areaYEnd: 620.0,
                  slideX: 2.0,
                  slideY: 0.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  fallCurve: Cubic(0.55, 0.09, 0.68, 0.53),
                  fadeCurve: Cubic(0.95, 0.05, 0.80, 0.04)),
            ),
            const ThunderWidget(
              thunderConfig: ThunderConfig(
                  thunderWidth: 11.0,
                  color: Color(0x99ffee58),
                  flashStartMill: 50,
                  flashEndMill: 300,
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  blurStyle: BlurStyle.solid,
                  blurSigma: 28.0,
                  points: [Offset(110.0, 210.0), Offset(120.0, 240.0)]),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 250.0,
                  color: Color(0xad90a4ae),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 20.0,
                  y: 3.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.08,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 0.0,
                  slideDurMill: 3000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const WindWidget(
              windConfig: WindConfig(
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  slideDurMill: 1000,
                  slideXStart: 0.0,
                  slideXEnd: 350.0,
                  color: Color(0xff607d8b),
                  width: 7.0,
                  y: 300.0,
                  windGap: 15.0,
                  blurSigma: 7.0,
                  blurStyle: BlurStyle.solid),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 160.0,
                  color: Color(0xb1607d8b),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 140.0,
                  y: 97.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.1,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 4.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
          ],
        WeatherScene.rainyOvercast => [
            const RainWidget(
              rainConfig: RainConfig(
                  count: 30,
                  color: Color(0xff9e9e9e),
                  lengthDrop: 13.0,
                  widthDrop: 4.0,
                  isRoundedEndsDrop: true,
                  widgetRainDrop: null,
                  fallRangeMinDurMill: 500,
                  fallRangeMaxDurMill: 1500,
                  areaXStart: 41.0,
                  areaXEnd: 264.0,
                  areaYStart: 208.0,
                  areaYEnd: 620.0,
                  slideX: 2.0,
                  slideY: 0.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  fallCurve: Cubic(0.55, 0.09, 0.68, 0.53),
                  fadeCurve: Cubic(0.95, 0.05, 0.80, 0.04)),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 270.0,
                  color: Color(0xcdbdbdbd),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 119.0,
                  y: -50.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.1,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 11.0,
                  slideY: 13.0,
                  slideDurMill: 4000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 250.0,
                  color: Color(0x92fafafa),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 20.0,
                  y: 3.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.08,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 0.0,
                  slideDurMill: 3000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 160.0,
                  color: Color(0xb5fafafa),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 140.0,
                  y: 97.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.1,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 20.0,
                  slideY: 4.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
          ],
        WeatherScene.weatherEvery => [
            const SunWidget(
              sunConfig: SunConfig(
                  width: 360.0,
                  blurSigma: 13.0,
                  blurStyle: BlurStyle.solid,
                  isLeftLocation: true,
                  coreColor: Color(0xffff9800),
                  midColor: Color(0xffffee58),
                  outColor: Color(0xffffa726),
                  animMidMill: 1500,
                  animOutMill: 1500),
            ),
            const WindWidget(
              windConfig: WindConfig(
                  width: 6.0,
                  y: 300.0,
                  windGap: 14.0,
                  blurSigma: 13.0,
                  color: Color(0xff607d8b),
                  slideXStart: 0.0,
                  slideXEnd: 350.0,
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  slideDurMill: 1000,
                  blurStyle: BlurStyle.solid),
            ),
            const RainWidget(
              rainConfig: RainConfig(
                  count: 10,
                  lengthDrop: 12.0,
                  widthDrop: 4.0,
                  color: Color(0x9978909c),
                  isRoundedEndsDrop: true,
                  widgetRainDrop: null,
                  fallRangeMinDurMill: 500,
                  fallRangeMaxDurMill: 1500,
                  areaXStart: 120.0,
                  areaXEnd: 190.0,
                  areaYStart: 215.0,
                  areaYEnd: 540.0,
                  slideX: 2.0,
                  slideY: 0.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  fallCurve: Cubic(0.55, 0.09, 0.68, 0.53),
                  fadeCurve: Cubic(0.95, 0.05, 0.80, 0.04)),
            ),
            const SnowWidget(
              snowConfig: SnowConfig(
                  count: 20,
                  size: 20.0,
                  color: Color(0xb3ffffff),
                  icon: IconData(57399, fontFamily: 'MaterialIcons'),
                  widgetSnowflake: null,
                  areaXStart: 90.0,
                  areaXEnd: 230.0,
                  areaYStart: 200.0,
                  areaYEnd: 540.0,
                  waveRangeMin: 20.0,
                  waveRangeMax: 110.0,
                  waveMinSec: 5,
                  waveMaxSec: 20,
                  waveCurve: Cubic(0.45, 0.05, 0.55, 0.95),
                  fadeCurve: Cubic(0.60, 0.04, 0.98, 0.34),
                  fallMinSec: 10,
                  fallMaxSec: 60),
            ),
            const CloudWidget(
              cloudConfig: CloudConfig(
                  size: 250.0,
                  color: Color(0xaaffffff),
                  icon: IconData(63056, fontFamily: 'MaterialIcons'),
                  widgetCloud: null,
                  x: 70.0,
                  y: 5.0,
                  scaleBegin: 1.0,
                  scaleEnd: 1.1,
                  scaleCurve: Cubic(0.40, 0.00, 0.20, 1.00),
                  slideX: 11.0,
                  slideY: 5.0,
                  slideDurMill: 2000,
                  slideCurve: Cubic(0.40, 0.00, 0.20, 1.00)),
            ),
            const ThunderWidget(
              thunderConfig: ThunderConfig(
                  thunderWidth: 10.0,
                  blurSigma: 13.0,
                  blurStyle: BlurStyle.solid,
                  color: Color(0x99ffee58),
                  flashStartMill: 50,
                  flashEndMill: 300,
                  pauseStartMill: 50,
                  pauseEndMill: 6000,
                  points: [Offset(110.0, 210.0), Offset(120.0, 240.0)]),
            ),
          ],
      },
    );
  }

  /// Widget size.
  ///
  /// Specify this size to determine the size of this widget (canvas).
  final Size sizeCanvas;

  /// Cropping parts that go beyond the contours [sizeCanvas].
  final Clip clip;

  /// Apply decorations to shape your scene.
  final Decoration? decoration;

  /// Provide weather widgets [SunWidget], [CloudWidget], [SnowWidget] or others.
  ///
  /// Any other widgets can be presented to your liking.
  final List<Widget> children;

  /// Specify whether the gradient starts on the left side.
  final bool? isLeftCornerGradient;

  /// Scene background colors. See [BackgroundWidget] for more details.
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(sizeCanvas),
      clipBehavior: clip,
      decoration: decoration,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final sizeConstraints = constraints.biggest;

          final scaleTrue = math.min(
            sizeConstraints.height / sizeCanvas.height,
            sizeConstraints.width / sizeCanvas.width,
          );

          return BackgroundWidget(
            colors: colors,
            isLeftCorner: isLeftCornerGradient,
            child: Transform.scale(
              alignment: Alignment.topLeft,
              scale: scaleTrue,
              child: Stack(children: children),
            ),
          );
        },
      ),
    );
  }
}
