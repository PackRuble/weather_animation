import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../model/configs.dart';

class RainWidget extends StatelessWidget {
  const RainWidget({
    super.key,
    RainConfig? rainConfig,
  }) : rainConfig = rainConfig ?? const RainConfig();

  final RainConfig rainConfig;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        for (int i = 0; i < rainConfig.count; i++)
          RainDropWidget(rainConfig: rainConfig)
      ],
    );
  }
}

class RainDropWidget extends StatefulWidget {
  const RainDropWidget({
    super.key,
    RainConfig? rainConfig,
  }) : rainConfig = rainConfig ?? const RainConfig();

  final RainConfig rainConfig;

  @override
  State<RainDropWidget> createState() => _RainDropWidgetState();
}

class _RainDropWidgetState extends State<RainDropWidget>
    with TickerProviderStateMixin {
  late final AnimationController slideController,
      fallController,
      fadeController;
  late Animation<double> fallAnimation, fadeAnimation;
  late Animation<Offset> slideAnimation;
  late double randomX;
  late int randomRainDuration;

  late double y;

  late RainConfig _config;

  @override
  void initState() {
    super.initState();

    _initAnimation();
    _initMainState();
    _addListeners();
  }

  void _initAnimation() {
    slideController = AnimationController(vsync: this);
    fallController = AnimationController(vsync: this);
    fadeController = AnimationController(vsync: this);
  }

  void _initMainState([bool isReload = false]) {
    _config = widget.rainConfig;

    if (!isReload) y = _config.areaYStart;

    _setData();

    slideAnimation =
        Tween(begin: Offset.zero, end: Offset(_config.slideX, _config.slideY))
            .animate(CurvedAnimation(
                parent: slideController, curve: _config.slideCurve));
    fadeAnimation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: fallController, curve: _config.fadeCurve));

    fallController.forward();
    fadeController.forward();
    slideController.repeat(reverse: true);
  }

  void _setData() {
    randomX = _randomRain(
      poolStart: _config.areaXStart,
      poolEnd: _config.areaXEnd,
    ).toDouble();
    randomRainDuration = _randomRain(
      poolStart: _config.fallRangeMinDurMill,
      poolEnd: _config.fallRangeMaxDurMill,
    );

    slideController.duration = Duration(milliseconds: randomRainDuration);
    fallController.duration = Duration(milliseconds: randomRainDuration);
    fadeController.duration = Duration(milliseconds: randomRainDuration);

    fallAnimation = Tween(
      begin: _config.areaYStart,
      end: _config.areaYEnd,
    ).animate(
      CurvedAnimation(parent: fallController, curve: _config.fallCurve),
    );
  }

  void _addListeners() {
    fallAnimation.addListener(() => setState(() => y = fallAnimation.value));

    fallAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _setData();

        fallController.reset();
        fadeController.reset();
        fallController.forward();
        fadeController.forward();
        slideController.repeat(reverse: true);
      }
    });
  }

  int _randomRain({required num poolStart, required num poolEnd}) =>
      ((math.Random().nextDouble() * poolEnd) + poolStart).toInt();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: randomX,
      top: y,
      child: SlideTransition(
        position: slideAnimation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: _config.widgetRainDrop ??
              CustomPaint(
                painter: _RainPainter(
                  color: _config.color,
                  dropLength: _config.lengthDrop,
                  dropWidth: _config.widthDrop,
                  isRoundedEnds: _config.isRoundedEndsDrop,
                ),
              ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant RainDropWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final oldConfig = oldWidget.rainConfig;
    final nowConfig = widget.rainConfig;

    // rebuild only what is used in the `build` method
    if (oldConfig.color != nowConfig.color ||
        oldConfig.count != nowConfig.count ||
        oldConfig.isRoundedEndsDrop != nowConfig.isRoundedEndsDrop ||
        oldConfig.widthDrop != nowConfig.widthDrop ||
        oldConfig.widgetRainDrop != nowConfig.widgetRainDrop ||
        oldConfig.lengthDrop != nowConfig.lengthDrop) {
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
    slideController.dispose();
    fallController.dispose();
    fadeController.dispose();
    super.dispose();
  }
}

class _RainPainter extends CustomPainter {
  const _RainPainter({
    required this.dropLength,
    required this.dropWidth,
    required this.color,
    required this.isRoundedEnds,
  });

  final double dropLength;
  final double dropWidth;
  final Color color;
  final bool isRoundedEnds;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
      Path()..lineTo(0, dropLength),
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeCap = isRoundedEnds ? StrokeCap.round : StrokeCap.butt
        ..strokeWidth = dropWidth,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
