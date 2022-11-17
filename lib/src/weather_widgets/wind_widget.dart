import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../model/configs.dart';

class WindWidget extends StatefulWidget {
  const WindWidget({Key? key, this.windConfig = const WindConfig()})
      : super(key: key);

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
        poolStart: _config.pauseStartMill, poolEnd: _config.pauseEndMill);

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
            poolStart: _config.pauseStartMill, poolEnd: _config.pauseEndMill);
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

  int _randomWind({required num poolStart, required num poolEnd}) {
    return ((math.Random().nextDouble() * poolEnd) + poolStart).toInt();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: CustomPaint(
        painter: WindPainter(
            listenable: slideAnimation,
            point: slideAnimation,
            windColor: _config.color,
            windGust: _config.windGust,
            windSlideY: _config.y,
            windWidth: _config.width,
            blurStyle: _config.blurStyle,
            blurSigma: _config.blurSigma),
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
        oldConfig.windGust != newConfig.windGust ||
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

class WindPainter extends CustomPainter {
  final Paint _paint = Paint();
  Animation<double> point;
  double windGust, windSlideY, windWidth, blurSigma;
  BlurStyle blurStyle;
  Color windColor;

  WindPainter(
      {required Listenable listenable,
      required this.point,
      required this.windGust,
      required this.windSlideY,
      required this.windWidth,
      required this.windColor,
      required this.blurSigma,
      required this.blurStyle})
      : super(repaint: listenable);

  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = windColor;
    _paint.strokeWidth = windWidth;
    _paint.maskFilter = MaskFilter.blur(blurStyle, blurSigma);
    _paint.style = PaintingStyle.stroke;
    final List<Offset> points = [
      Offset(point.value + 10 + (point.value / 10), windSlideY),
      Offset(point.value + 120 - (point.value / 10), windSlideY),
      Offset(point.value - (point.value / 10), windSlideY + windGust),
      Offset(point.value + 133 + (point.value / 10), windSlideY + windGust),
      Offset(point.value + 2 + (point.value / 10), windSlideY + windGust * 2),
      Offset(point.value + 110 + (point.value / 10), windSlideY + windGust * 2)
    ];
    canvas.drawPoints(PointMode.lines, points, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
