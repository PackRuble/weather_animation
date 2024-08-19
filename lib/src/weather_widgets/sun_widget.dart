import 'dart:math';

import 'package:flutter/material.dart';

import '../model/configs.dart';

class SunWidget extends StatefulWidget {
  const SunWidget({
    super.key,
    SunConfig? sunConfig,
  }) : sunConfig = sunConfig ?? const SunConfig();

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        for (final (i, color) in [
          _config.coreColor,
          _config.midColor,
          _config.outColor,
        ].indexed)
          Transform.scale(
            scaleX: widget.sunConfig.isLeftLocation ? 1 : -1,
            child: CustomPaint(
              painter: _SunPainter(
                color: color,
                radius: _sunWidth *
                    (i == 2 ? (1 / 2) : ((2.7 - (-i + 1) * 1.5) / 7)),
                width: _sunWidth * (2 / 9),
                repaint: switch (i) {
                  0 => null,
                  1 => inController,
                  2 || _ => outController,
                },
                animationWidth: switch (i) {
                  0 => null,
                  1 => inAnimation,
                  2 || _ => outAnimation,
                },
                blurStyle: _config.blurStyle,
                blurSigma: _config.blurSigma,
                useFill: i == 0,
                useCenter: i == 0,
              ),
              // size: widget.size,
            ),
          ),
      ],
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

class _SunPainter extends CustomPainter {
  const _SunPainter({
    required this.useFill,
    this.useCenter = false,
    super.repaint,
    required this.color,
    required this.radius,
    required this.width,
    required this.animationWidth,
    required this.blurStyle,
    required this.blurSigma,
  });

  final bool useCenter;
  final Color color;
  final double radius;
  final double width;
  final bool useFill;
  final Animation<double>? animationWidth;
  final BlurStyle blurStyle;
  final double blurSigma;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawArc(
      Rect.fromCircle(center: Offset.zero, radius: radius),
      0,
      pi / 2,
      useCenter,
      Paint()
        ..color = color
        ..style = useFill ? PaintingStyle.fill : PaintingStyle.stroke
        ..maskFilter = MaskFilter.blur(blurStyle, blurSigma)
        ..strokeWidth = animationWidth != null ? animationWidth!.value : width,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
