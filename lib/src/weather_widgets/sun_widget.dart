import 'dart:math';

import 'package:flutter/material.dart';

import '../model/configs.dart';

class SunWidget extends StatefulWidget {
  const SunWidget({
    Key? key,
    SunConfig? sunConfig,
  })  : sunConfig = sunConfig ?? const SunConfig(),
        super(key: key);

  final SunConfig sunConfig;

  @override
  State<SunWidget> createState() => _SunWidgetState();
}

class _SunWidgetState extends State<SunWidget> with TickerProviderStateMixin {
  late AnimationController outController, inController;
  late Animation<double> outAnimation, inAnimation;
  late double _sunWidth;
  late SunConfig _config;

  @override
  void initState() {
    super.initState();

    _initController();
    _reloadState();
  }

  void _initController() {
    outController = AnimationController(vsync: this);
    inController = AnimationController(vsync: this);
  }

  void _reloadState() {
    _config = widget.sunConfig;
    _sunWidth = _config.width;

    outController.duration = Duration(milliseconds: _config.animOutMill);
    inController.duration = Duration(milliseconds: _config.animMidMill);

    outAnimation =
        Tween(begin: _sunWidth * 2 / 9, end: _sunWidth * 2.5 / 9).animate(
      CurvedAnimation(parent: outController, curve: Curves.fastOutSlowIn),
    );
    inAnimation =
        Tween(begin: _sunWidth * 2 / 9, end: _sunWidth * 1 / 3).animate(
      CurvedAnimation(parent: inController, curve: Curves.fastOutSlowIn),
    );

    outController.repeat(reverse: true);
    inController.repeat(reverse: true);
  }

  List<Widget> _buildPaints() {
    final List<Widget> paints = [];

    final Color core = _config.coreColor;
    final Color middle = _config.midColor;
    final Color outside = _config.outColor;

    for (int i = 0; i < 3; i++) {
      Color color;
      switch (i) {
        case 0:
          color = core;
          break;
        case 1:
          color = middle;
          break;
        case 2:
          color = outside;
          break;
        default:
          color = core;
          break;
      }

      double radius;
      if (i == 2) {
        radius = _sunWidth * (1 / 2);
      } else {
        radius = _sunWidth * ((2.7 - (-i + 1) * 1.5) / 7);
      }

      paints.add(
        Transform.scale(
          scaleX: widget.sunConfig.isLeftLocation ? 1 : -1,
          child: CustomPaint(
            painter: SunPainter(
              color: color,
              radius: radius,
              width: _sunWidth * (2 / 9),
              repaintListener: i == 0
                  ? null
                  : i == 1
                      ? inController
                      : outController,
              animationWidth: i == 0
                  ? null
                  : i == 1
                      ? inAnimation
                      : outAnimation,
              blurStyle: _config.blurStyle,
              blurSigma: _config.blurSigma,
              useFill: i == 0 ? true : false,
              useCenter: i == 0 ? true : false,
            ),
            // size: widget.size,
          ),
        ),
      );
    }
    return paints;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: _buildPaints(),
    );
  }

  @override
  void didUpdateWidget(covariant SunWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // rebuild only what is used in the `build` method
    if (oldWidget.sunConfig.coreColor != widget.sunConfig.coreColor ||
        oldWidget.sunConfig.midColor != widget.sunConfig.midColor ||
        oldWidget.sunConfig.outColor != widget.sunConfig.outColor ||
        oldWidget.sunConfig.isLeftLocation != widget.sunConfig.isLeftLocation ||
        oldWidget.sunConfig.blurStyle != widget.sunConfig.blurStyle ||
        oldWidget.sunConfig.blurSigma != widget.sunConfig.blurSigma) {
      _config = widget.sunConfig;
      return;
    }

    // rebuild all
    if (oldWidget.sunConfig != widget.sunConfig) {
      _reloadState();
    }
  }

  @override
  void dispose() {
    outController.dispose();
    inController.dispose();
    super.dispose();
  }
}

class SunPainter extends CustomPainter {
  final bool useCenter;
  final Color color;
  final double radius;
  final double width;
  final bool useFill;
  final Animation<double>? animationWidth;
  final BlurStyle blurStyle;
  final double blurSigma;
  final _paint = Paint();

  SunPainter({
    required this.useFill,
    this.useCenter = false,
    Listenable? repaintListener,
    required this.color,
    required this.radius,
    required this.width,
    required this.animationWidth,
    required this.blurStyle,
    required this.blurSigma,
  }) : super(repaint: repaintListener);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromCircle(center: Offset.zero, radius: radius);

    _paint.color = color;
    if (useFill) {
      _paint.style = PaintingStyle.fill;
    } else {
      _paint.style = PaintingStyle.stroke;
    }
    _paint.maskFilter = MaskFilter.blur(blurStyle, blurSigma);
    if (animationWidth != null) {
      _paint.strokeWidth = animationWidth!.value;
    } else {
      _paint.strokeWidth = width;
    }
    canvas.drawArc(rect, 0, pi / 2, useCenter, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
