import 'dart:math';

import 'package:flutter/material.dart';

import '../model/configs.dart';

/// A class represents the snow widget. Use [snowConfig] for deep customization.
class SnowWidget extends StatelessWidget {
  const SnowWidget({Key? key, this.snowConfig = const SnowConfig()})
      : super(key: key);

  final SnowConfig snowConfig;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        for (int i = 0; i < snowConfig.count; i++)
          SnowflakeWidget(
            snowflakeConfig: snowConfig,
          )
      ],
    );
  }
}

/// A class represents a single snow widget (i.e. snowflakes).
class SnowflakeWidget extends StatefulWidget {
  const SnowflakeWidget({
    Key? key,
    required this.snowflakeConfig,
  }) : super(key: key);

  final SnowConfig snowflakeConfig;

  @override
  State<StatefulWidget> createState() => _SnowflakeWidgetState();
}

class _SnowflakeWidgetState extends State<SnowflakeWidget>
    with TickerProviderStateMixin {
  late final AnimationController fallController, waveController, fadeController;
  late Animation<double> fallAnimation, waveAnimation, fadeAnimation;
  late double randomSnowX, randomSnowWave;
  late double x;
  late double y;
  late int randomSnowFallDuration, randomSnowWaveDuration;
  late SnowConfig _config;

  @override
  void initState() {
    super.initState();

    _initAnimation();
    _initMainState();
    _addListeners();
  }

  void _initAnimation() {
    fallController = AnimationController(vsync: this);
    waveController = AnimationController(vsync: this);
    fadeController = AnimationController(vsync: this);
  }

  void _initMainState([bool isReload = false]) {
    _config = widget.snowflakeConfig;

    // We want the snow to be distributed throughout the Y area.
    double? areaYStartInit;
    if (!isReload) {
      areaYStartInit =
          _randomSnow(poolStart: _config.areaYStart, poolEnd: _config.areaYEnd)
              .toDouble();
    }

    _setRandomData();

    fallController.duration = Duration(seconds: randomSnowFallDuration);
    waveController.duration = Duration(seconds: randomSnowWaveDuration);
    fadeController.duration = Duration(seconds: randomSnowFallDuration);

    fallAnimation = Tween(
            begin: areaYStartInit ?? _config.areaYStart, end: _config.areaYEnd)
        .animate(CurvedAnimation(parent: fallController, curve: Curves.linear));

    y = fallAnimation.value;

    waveAnimation = Tween(
      begin: randomSnowWaveDuration.isEven
          ? randomSnowX
          : randomSnowX + randomSnowWave,
      end: randomSnowWaveDuration.isEven
          ? randomSnowX + randomSnowWave
          : randomSnowX,
    ).animate(
        CurvedAnimation(parent: waveController, curve: _config.waveCurve));

    x = waveAnimation.value;

    fadeAnimation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: fadeController, curve: _config.fadeCurve));

    fallController.forward();
    fadeController.forward();
    waveController.repeat(reverse: true);
  }

  void _addListeners() {
    fallAnimation.addListener(() => setState(() => y = fallAnimation.value));

    waveAnimation.addListener(() => setState(() => x = waveAnimation.value));

    fallAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _setRandomData();
        fallController.duration = Duration(seconds: randomSnowFallDuration);
        waveController.duration = Duration(seconds: randomSnowWaveDuration);
        fadeController.duration = Duration(seconds: randomSnowFallDuration);
        fallAnimation =
            Tween(begin: _config.areaYStart, end: _config.areaYEnd).animate(
          CurvedAnimation(parent: fallController, curve: Curves.linear),
        );
        waveAnimation = Tween(
          begin: randomSnowWaveDuration.isEven
              ? randomSnowX
              : randomSnowX + randomSnowWave,
          end: randomSnowWaveDuration.isEven
              ? randomSnowX + randomSnowWave
              : randomSnowX,
        ).animate(
            CurvedAnimation(parent: waveController, curve: _config.waveCurve));
        waveController.reset();
        fallController.reset();
        fadeController.reset();
        fallController.forward();
        fadeController.forward();
        waveController.repeat(reverse: true);
      }
    });
  }

  void _setRandomData() {
    randomSnowX = _randomSnow(
      poolStart: _config.areaXStart,
      poolEnd: _config.areaXEnd,
    ).toDouble();

    randomSnowWave = _randomSnow(
      poolStart: _config.waveRangeMin,
      poolEnd: _config.waveRangeMax,
    ).toDouble();

    randomSnowFallDuration = _randomSnow(
      poolStart: _config.fallMinSec,
      poolEnd: _config.fallMaxSec,
    );

    randomSnowWaveDuration = _randomSnow(
      poolStart: _config.waveMinSec,
      poolEnd: _config.waveMaxSec,
    );
  }

  int _randomSnow({required num poolStart, required num poolEnd}) {
    return Random().nextInt(poolEnd.toInt() - poolStart.toInt() + 1) +
        poolStart.toInt();
  }

  @override
  Widget build(BuildContext context) {
    final widgetSnowflake = (_config.widgetSnowflake != null)
        ? _config.widgetSnowflake
        : Icon(
            _config.icon,
            color: _config.color,
            size: _config.size,
          );

    return Positioned(
      left: x,
      top: y,
      child: FadeTransition(
        opacity: fadeAnimation,
        child: widgetSnowflake,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant SnowflakeWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final oldConfig = oldWidget.snowflakeConfig;
    final nowConfig = widget.snowflakeConfig;

    // rebuild only what is used in the `build` method
    if (oldConfig.widgetSnowflake != nowConfig.widgetSnowflake ||
        oldConfig.icon != nowConfig.icon ||
        oldConfig.color != nowConfig.color ||
        oldConfig.count != nowConfig.count ||
        oldConfig.size != nowConfig.size) {
      _config = nowConfig;
      return;
    }

    // rebuild all
    if (oldConfig != nowConfig) {
      _initMainState(true);
    }
  }

  @override
  void dispose() {
    fallController.dispose();
    waveController.dispose();
    fadeController.dispose();
    super.dispose();
  }
}
