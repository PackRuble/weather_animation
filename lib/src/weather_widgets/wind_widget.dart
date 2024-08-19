import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../model/configs.dart';

class WindWidget extends StatefulWidget {
  const WindWidget({
    super.key,
    WindConfig? windConfig,
  }) : windConfig = windConfig ?? const WindConfig();

  final WindConfig windConfig;

  @override
  State<WindWidget> createState() => _WindWidgetState();
}

class _WindWidgetState extends State<WindWidget> with TickerProviderStateMixin {
  late final AnimationController slideController,
      fadeController,
      pauseController;
  late Animation<double> slideAnimation, fadeAnimation, pauseAnimation;
  late int randomPause;

  late WindConfig _config;

  @override
  void initState() {
    super.initState();

    _initAnimation();
    _initMainState();
    _addListeners();
  }

  void _initAnimation() {
    slideController = AnimationController(vsync: this);
    fadeController = AnimationController(vsync: this);
    pauseController = AnimationController(vsync: this);
  }

  void _initMainState() {
    _config = widget.windConfig;

    double sStart, sEnd;
    sStart = _config.slideXStart;
    sEnd = _config.slideXEnd;

    randomPause = _randomWind(
      poolStart: _config.pauseStartMill,
      poolEnd: _config.pauseEndMill,
    );

    slideController.duration = Duration(milliseconds: _config.slideDurMill);
    fadeController.duration = Duration(milliseconds: _config.slideDurMill ~/ 2);
    pauseController.duration = Duration(milliseconds: randomPause);

    pauseAnimation = Tween(begin: 0.0, end: 1.0).animate(pauseController);
    slideAnimation = Tween(begin: sStart, end: sEnd).animate(slideController);
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(fadeController);

    slideController.forward();
    fadeController.forward();
  }

  void _addListeners() {
    pauseAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        randomPause = _randomWind(
          poolStart: _config.pauseStartMill,
          poolEnd: _config.pauseEndMill,
        );
        pauseController.duration = Duration(milliseconds: randomPause);
        fadeController.reset();
        slideController.reset();
        fadeController.forward();
        slideController.forward();
      }
    });

    fadeAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) fadeController.reverse();
    });

    slideAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        pauseController.reset();
        pauseController.forward();
      }
    });
  }

  int _randomWind({required num poolStart, required num poolEnd}) =>
      ((math.Random().nextDouble() * poolEnd) + poolStart).toInt();

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: CustomPaint(
        painter: _WindPainter(
          repaint: slideAnimation,
          point: slideAnimation,
          windColor: _config.color,
          windGust: _config.windGap,
          windSlideY: _config.y,
          windWidth: _config.width,
          blurStyle: _config.blurStyle,
          blurSigma: _config.blurSigma,
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant WindWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final oldConfig = oldWidget.windConfig;
    final newConfig = widget.windConfig;

    // rebuild only what is used in the `build` method
    if (oldConfig.color != newConfig.color ||
        oldConfig.windGap != newConfig.windGap ||
        oldConfig.y != newConfig.y ||
        oldConfig.width != newConfig.width ||
        oldConfig.blurStyle != newConfig.blurStyle ||
        oldConfig.blurSigma != newConfig.blurSigma) {
      _config = newConfig;
      return;
    }

    // rebuild all
    if (oldConfig != newConfig) {
      _initMainState();
    }
  }

  @override
  void dispose() {
    fadeController.dispose();
    slideController.dispose();
    pauseController.dispose();
    super.dispose();
  }
}

class _WindPainter extends CustomPainter {
  _WindPainter({
    required super.repaint,
    required this.point,
    required this.windGust,
    required this.windSlideY,
    required this.windWidth,
    required this.windColor,
    required this.blurSigma,
    required this.blurStyle,
  });

  Animation<double> point;
  double windGust, windSlideY, windWidth, blurSigma;
  BlurStyle blurStyle;
  Color windColor;

  @override
  void paint(Canvas canvas, Size size) {
    final p = point.value;

    canvas.drawPoints(
      PointMode.lines,
      [
        Offset(p + 10 + (p / 10), windSlideY),
        Offset(p + 120 - (p / 10), windSlideY),
        Offset(p - (p / 10), windSlideY + windGust),
        Offset(p + 133 + (p / 10), windSlideY + windGust),
        Offset(p + 2 + (p / 10), windSlideY + windGust * 2),
        Offset(p + 110 + (p / 10), windSlideY + windGust * 2),
      ],
      Paint()
        ..color = windColor
        ..strokeWidth = windWidth
        ..maskFilter = MaskFilter.blur(blurStyle, blurSigma)
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
