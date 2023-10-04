// Copy this code into your project and run

import 'package:flutter/gestures.dart' show PointerDeviceKind;
import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

void main() => runApp(const AllScenesApp());

class AllScenesApp extends StatelessWidget {
  const AllScenesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Show me all the preset weather scenes',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // If you want to see each scene separately
    // return const AllScenes();
    return Scaffold(
      body: Row(
        children: [
          for (final w in WeatherScene.values)
            Flexible(
              child: Column(
                children: [
                  Text(w.name),
                  Expanded(child: w.getWeather()),
                ],
              ),
            )
        ],
      ),
    );
  }
}

// ignore_for_file: unreachable_from_main
class AllScenes extends StatelessWidget {
  const AllScenes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: PageView(
          children: WeatherScene.values.map((e) => e.getWeather()).toList(),
        ),
      ),
    );
  }
}
