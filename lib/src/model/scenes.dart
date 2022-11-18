import 'package:flutter/widgets.dart';

import '../weather_widgets/all_widgets.dart';
import '../wrapper_scene_widget.dart';
import 'configs.dart';

/// A variety of scenes of different weather phenomena.
enum WeatherScene {
  /// It's very sunny, it's hot, I'm going to be charcoal.
  ///
  /// Designation: hot, sunny, inclement
  /// Widgets: [SunWidget]
  scorchingSun,

  /// Sunset, evening, a little windy and cloudy. Nice weather.
  ///
  /// Designation: sunset, windy, cloudy, nice
  /// Widgets: [SunWidget], [WindWidget], [CloudWidget]
  sunset,

  /// It's winter, freezing, snowing and slightly warming in the sun. Its rays
  /// are not as strong as in summer, but still just as dear.
  ///
  /// Season: winter
  /// Designation: snowfall, frosty, snow clouds
  /// Widgets: [SunWidget], [SnowWidget], [CloudWidget]
  frosty,

  /// Typical winter, snow and clouds.
  ///
  /// Season: winter
  /// Designation: cold, snowfall, freezing, snow clouds
  /// Widgets: [SnowWidget], [CloudWidget]
  snowfall,

  /// Very moody weather. Outside it's about 0`C, it's raining, wet snow, strong
  /// wind and gray clouds.
  ///
  /// Season: autumn-winter
  /// Designation: raw, to patter, shower sleet, strong wind, foul
  /// Widgets: [RainsWidget], [SnowWidget], [CloudWidget], [WindWidget]
  showerSleet,

  /// Terrifying weather. Rain pours down like a bucket, thunderstorms, strong
  /// winds and foggy skies. Don't feel like going out at all. It's dangerous.
  ///
  /// Season: spring, summer, autumn
  /// Designation: gale-force wind, thunderstorm, lightning, to darken
  /// Widgets: [WindWidget], [RainsWidget], [ThundersWidget], [CloudWidget]
  stormy,

  /// The rain and the sky covered with clouds.
  ///
  /// Season: spring, summer, autumn
  /// Designation: rain, rain clouds, overcast, unpredictable
  /// Widgets: [RainsWidget], [CloudWidget]
  rainyOvercast,
  ;

  Widget getWeather() => getWeatherScene(this);
}

Widget getWeatherScene(WeatherScene weatherScene) {
  switch (weatherScene) {
    case WeatherScene.scorchingSun:
      return const WrapperScene(
        sizeCanvas: Size(350.0, 540.0),
        isLeftCornerGradient: false,
        colors: [
          Color(0xffd50000),
          Color(0xffffd54f),
        ],
        children: [
          SunWidget(
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
      );
    case WeatherScene.sunset:
      return const WrapperScene(
        sizeCanvas: Size(350.0, 540.0),
        isLeftCornerGradient: true,
        colors: [
          Color(0xff283593),
          Color(0xffff8a65),
        ],
        children: [
          SunWidget(
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
          WindWidget(
            windConfig: WindConfig(
                pauseStartMill: 50,
                pauseEndMill: 6000,
                slideDurMill: 1000,
                slideXStart: 0.0,
                slideXEnd: 350.0,
                color: Color(0xff607d8b),
                width: 5.0,
                y: 208.0,
                windGust: 10.0,
                blurSigma: 6.0,
                blurStyle: BlurStyle.solid),
          ),
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 250.0,
                color: Color(0x65212121),
                icon: IconData(63056),
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 160.0,
                color: Color(0x77212121),
                icon: IconData(63056),
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
          WindWidget(
            windConfig: WindConfig(
                pauseStartMill: 50,
                pauseEndMill: 6000,
                slideDurMill: 1000,
                slideXStart: 0.0,
                slideXEnd: 350.0,
                color: Color(0xff607d8b),
                width: 7.0,
                y: 300.0,
                windGust: 15.0,
                blurSigma: 7.0,
                blurStyle: BlurStyle.solid),
          ),
        ],
      );
    case WeatherScene.frosty:
      return const WrapperScene(
        sizeCanvas: Size(350.0, 540.0),
        isLeftCornerGradient: true,
        colors: [
          Color(0xff303f9f),
          Color(0xff1e88e5),
          Color(0xffbdbdbd),
        ],
        children: [
          SunWidget(
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
          SnowWidget(
            snowConfig: SnowConfig(
                count: 30,
                size: 20.0,
                color: Color(0xb3ffffff),
                icon: IconData(57399),
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 250.0,
                color: Color(0xa8fafafa),
                icon: IconData(63056),
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 160.0,
                color: Color(0xa8fafafa),
                icon: IconData(63056),
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
      );
    case WeatherScene.snowfall:
      return const WrapperScene(
        sizeCanvas: Size(350.0, 540.0),
        isLeftCornerGradient: true,
        colors: [
          Color(0xff3949ab),
          Color(0xff90caf9),
          Color(0xffd6d6d6),
        ],
        children: [
          SnowWidget(
            snowConfig: SnowConfig(
                count: 30,
                size: 20.0,
                color: Color(0xb3ffffff),
                icon: IconData(57399),
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 250.0,
                color: Color(0xa8fafafa),
                icon: IconData(63056),
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 160.0,
                color: Color(0xa8fafafa),
                icon: IconData(63056),
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
      );
    case WeatherScene.showerSleet:
      return const WrapperScene(
        sizeCanvas: Size(350.0, 540.0),
        isLeftCornerGradient: true,
        colors: [
          Color(0xff37474f),
          Color(0xff546e7a),
          Color(0xffbdbdbd),
          Color(0xff90a4ae),
          Color(0xff78909c),
        ],
        children: [
          WindWidget(
            windConfig: WindConfig(
                pauseStartMill: 50,
                pauseEndMill: 6000,
                slideDurMill: 1000,
                slideXStart: 0.0,
                slideXEnd: 350.0,
                color: Color(0xff607d8b),
                width: 5.0,
                y: 208.0,
                windGust: 10.0,
                blurSigma: 6.0,
                blurStyle: BlurStyle.solid),
          ),
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 250.0,
                color: Color(0xa8fafafa),
                icon: IconData(63056),
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
          WindWidget(
            windConfig: WindConfig(
                pauseStartMill: 50,
                pauseEndMill: 6000,
                slideDurMill: 1000,
                slideXStart: 0.0,
                slideXEnd: 350.0,
                color: Color(0xff607d8b),
                width: 7.0,
                y: 300.0,
                windGust: 15.0,
                blurSigma: 7.0,
                blurStyle: BlurStyle.solid),
          ),
          SnowWidget(
            snowConfig: SnowConfig(
                count: 30,
                size: 20.0,
                color: Color(0xb3ffffff),
                icon: IconData(57399),
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
          RainsWidget(
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 160.0,
                color: Color(0xa8fafafa),
                icon: IconData(63056),
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
      );
    case WeatherScene.stormy:
      return const WrapperScene(
        sizeCanvas: Size(350.0, 540.0),
        isLeftCornerGradient: false,
        colors: [
          Color(0xff263238),
          Color(0xff78909c),
        ],
        children: [
          WindWidget(
            windConfig: WindConfig(
                pauseStartMill: 50,
                pauseEndMill: 6000,
                slideDurMill: 1000,
                slideXStart: 0.0,
                slideXEnd: 350.0,
                color: Color(0xff607d8b),
                width: 5.0,
                y: 208.0,
                windGust: 10.0,
                blurSigma: 6.0,
                blurStyle: BlurStyle.solid),
          ),
          RainsWidget(
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
          ThundersWidget(
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 250.0,
                color: Color(0xad90a4ae),
                icon: IconData(63056),
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
          WindWidget(
            windConfig: WindConfig(
                pauseStartMill: 50,
                pauseEndMill: 6000,
                slideDurMill: 1000,
                slideXStart: 0.0,
                slideXEnd: 350.0,
                color: Color(0xff607d8b),
                width: 7.0,
                y: 300.0,
                windGust: 15.0,
                blurSigma: 7.0,
                blurStyle: BlurStyle.solid),
          ),
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 160.0,
                color: Color(0xb1607d8b),
                icon: IconData(63056),
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
      );
    case WeatherScene.rainyOvercast:
      return const WrapperScene(
        sizeCanvas: Size(350.0, 540.0),
        isLeftCornerGradient: true,
        colors: [
          Color(0xff424242),
          Color(0xffcfd8dc),
        ],
        children: [
          RainsWidget(
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 270.0,
                color: Color(0xcdbdbdbd),
                icon: IconData(63056),
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 250.0,
                color: Color(0x92fafafa),
                icon: IconData(63056),
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
          CloudWidget(
            cloudConfig: CloudConfig(
                size: 160.0,
                color: Color(0xb5fafafa),
                icon: IconData(63056),
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
      );
  }
}
