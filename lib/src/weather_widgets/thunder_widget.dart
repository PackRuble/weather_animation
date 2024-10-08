import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../model/configs.dart';

/// Multiple lightning widget and example of use with the [Stack] widget.
///
/// To create a complex version of a thunderstorm, use [SingleThunderWidget].
class ThunderWidget extends StatelessWidget {
  const ThunderWidget({
    super.key,
    ThunderConfig? thunderConfig,
  }) : thunderConfig = thunderConfig ?? const ThunderConfig();

  /// Using [ThunderConfig.points] has no effect.
  final ThunderConfig thunderConfig;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleThunderWidget(
          thunderConfig: thunderConfig.copyWith(
            points: const [
              Offset(160, 210),
              Offset(170, 240),
              Offset(156, 260),
              Offset(183, 340),
              Offset(155, 348),
              Offset(170, 400),
            ],
          ),
        ),
        SingleThunderWidget(
          thunderConfig: thunderConfig.copyWith(
            points: const [
              Offset(230, 215),
              Offset(248, 285),
              Offset(232, 295),
              Offset(245, 335),
            ],
          ),
        ),
      ],
    );
  }
}

class SingleThunderWidget extends StatefulWidget {
  const SingleThunderWidget({
    super.key,
    ThunderConfig? thunderConfig,
  }) : thunderConfig = thunderConfig ?? const ThunderConfig();

  final ThunderConfig thunderConfig;

  @override
  State<StatefulWidget> createState() => SingleThunderWidgetState();
}

class SingleThunderWidgetState extends State<SingleThunderWidget>
    with TickerProviderStateMixin {
  late AnimationController fadeController, pauseController;
  late Animation<double> fadeAnimation, pauseAnimation;
  late int randomFlashDuration, randomPause;
  late int fStart, fEnd, pStart, pEnd;

  late ThunderConfig _config;

  @override
  void initState() {
    super.initState();

    _initAnimation();
    _initMainState();
    _addListeners();
  }

  void _initMainState() {
    _config = widget.thunderConfig;

    fStart = _config.flashStartMill;
    fEnd = _config.flashEndMill;
    pStart = _config.pauseStartMill;
    pEnd = _config.pauseEndMill;

    randomFlashDuration = _random(poolStart: fStart, poolEnd: fEnd);
    randomPause = _random(poolStart: pStart, poolEnd: pEnd);

    fadeController.duration = Duration(milliseconds: randomFlashDuration);
    pauseController.duration = Duration(milliseconds: randomPause);

    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: fadeController, curve: Curves.linear),
    );
    pauseAnimation = Tween(begin: 0.0, end: 1.0).animate(pauseController);

    fadeController.forward();
  }

  void _initAnimation() {
    fadeController = AnimationController(vsync: this);
    pauseController = AnimationController(vsync: this);
  }

  void _addListeners() {
    pauseAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        randomPause = _random(poolStart: pStart, poolEnd: pEnd);
        pauseController.duration = Duration(milliseconds: randomPause);
        fadeController.forward();
      }
    });

    fadeAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        fadeController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        randomFlashDuration = _random(poolStart: fStart, poolEnd: fEnd);
        fadeController.duration = Duration(milliseconds: randomFlashDuration);
        pauseController.reset();
        fadeController.reset();
        pauseController.forward();
      }
    });
  }

  int _random({required num poolStart, required num poolEnd}) =>
      ((math.Random().nextDouble() * poolEnd) + poolStart).toInt();

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: CustomPaint(
        painter: _ThunderPainter(
          points: _config.points,
          color: _config.color,
          blurStyle: _config.blurStyle,
          blurSigma: _config.blurSigma,
          width: _config.thunderWidth,
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant SingleThunderWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final oldConfig = oldWidget.thunderConfig;
    final nowConfig = widget.thunderConfig;

    // rebuild only what is used in the `build` method
    if (oldConfig.color != nowConfig.color ||
        oldConfig.points != nowConfig.points ||
        oldConfig.blurStyle != nowConfig.blurStyle ||
        oldConfig.blurSigma != nowConfig.blurSigma ||
        oldConfig.thunderWidth != nowConfig.thunderWidth) {
      _config = nowConfig;
      return;
    }

    // rebuild all
    if (oldConfig != nowConfig) {
      _initMainState();
    }
  }

  @override
  void dispose() {
    fadeController.dispose();
    pauseController.dispose();
    super.dispose();
  }
}

class _ThunderPainter extends CustomPainter {
  const _ThunderPainter({
    required this.blurStyle,
    required this.blurSigma,
    required this.points,
    required this.color,
    required this.width,
  });

  final List<Offset> points;
  final Color color;
  final BlurStyle blurStyle;
  final double width, blurSigma;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPoints(
      PointMode.lines,
      points,
      Paint()
        ..color = color
        ..strokeWidth = width
        ..maskFilter = MaskFilter.blur(blurStyle, blurSigma)
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
