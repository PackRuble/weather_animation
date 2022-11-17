import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../model/configs.dart';

class ThundersWidget extends StatelessWidget {
  const ThundersWidget({
    Key? key,
    this.thunderConfig = const ThunderConfig(),
  }) : super(key: key);

  final ThunderConfig thunderConfig;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleThunder(
          thunderConfig: thunderConfig.copyWith(
            points: const [
              Offset(110, 210),
              Offset(120, 240),
              Offset(106, 260),
              Offset(133, 340),
              Offset(105, 348),
              Offset(120, 400)
            ],
          ),
        ),
        SingleThunder(
          thunderConfig: thunderConfig.copyWith(
            points: const [
              Offset(210, 215),
              Offset(228, 285),
              Offset(212, 295),
              Offset(225, 335)
            ],
          ),
        ),
      ],
    );
  }
}

class SingleThunder extends StatefulWidget {
  const SingleThunder({
    Key? key,
    this.thunderConfig = const ThunderConfig(),
  }) : super(key: key);

  final ThunderConfig thunderConfig;

  @override
  State<StatefulWidget> createState() => SingleThunderState();
}

class SingleThunderState extends State<SingleThunder>
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

    fadeAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: fadeController, curve: Curves.linear));
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
      switch (status) {
        case AnimationStatus.completed:
          fadeController.reverse();
          break;
        case AnimationStatus.dismissed:
          randomFlashDuration = _random(poolStart: fStart, poolEnd: fEnd);
          fadeController.duration = Duration(milliseconds: randomFlashDuration);
          pauseController.reset();
          fadeController.reset();
          pauseController.forward();
          break;
        default:
          break;
      }
    });
  }

  int _random({required num poolStart, required num poolEnd}) {
    return ((math.Random().nextDouble() * poolEnd) + poolStart).toInt();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: CustomPaint(
        painter: ThunderPainter(
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
  void didUpdateWidget(covariant SingleThunder oldWidget) {
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

class ThunderPainter extends CustomPainter {
  final Paint _paint = Paint();
  List<Offset> points;
  final Color color;
  final BlurStyle blurStyle;
  final double width, blurSigma;

  ThunderPainter({
    required this.blurStyle,
    required this.blurSigma,
    required this.points,
    required this.color,
    required this.width,
  });

  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = color;
    _paint.strokeWidth = width;
    _paint.maskFilter = MaskFilter.blur(blurStyle, blurSigma);
    _paint.style = PaintingStyle.stroke;
    _paint.strokeCap = StrokeCap.round;

    canvas.drawPoints(PointMode.lines, points, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
