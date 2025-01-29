import 'package:flutter/gestures.dart' show PointerDeviceKind;
import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

void main() => runApp(const AllScenesApp());

class AllScenesApp extends StatelessWidget {
  const AllScenesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show me all the preset weather scenes',
      debugShowCheckedModeBanner: false,
      home: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: PointerDeviceKind.values.toSet(),
        ),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var showAll = false;

  @override
  Widget build(BuildContext context) {
    final headlineStyle = Theme.of(context).textTheme.displayMedium;

    return Scaffold(
      appBar: AppBar(
        title: Text('Built-in weather scenes'),
        actions: [
          Text('one/all'),
          Switch(
            value: showAll,
            onChanged: (value) => setState(() => showAll = value),
          ),
        ],
      ),
      body: !showAll
          ? PageView(
              children: [
                for (final w in WeatherScene.values)
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      WrapperScene.weather(scene: w),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            '<- Swipe ->',
                            style: headlineStyle?.copyWith(
                              color:
                                  headlineStyle.color?.withValues(alpha: 0.2),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
              ],
            )
          : Row(
              children: [
                for (final w in WeatherScene.values)
                  Flexible(
                    child: Column(
                      children: [
                        Text(w.name),
                        Expanded(child: w.sceneWidget),
                      ],
                    ),
                  ),
              ],
            ),
    );
  }
}
