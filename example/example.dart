// Copy this code into your project and run

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Weather animation package - example',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: PointerDeviceKind.values.toSet(),
        ),
        child: PageView(
          children: [for (final w in WeatherScene.values) w.sceneWidget],
        ),
      ),
    );
  }
}
