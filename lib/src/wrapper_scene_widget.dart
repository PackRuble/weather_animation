import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'background_widget.dart';

/// A very handy wrapper for positioning the scene and placing weather widgets
/// on it. Applies smart scaling so that your weather widgets are placed evenly
/// across the screen parameters provided.
class WrapperScene extends StatelessWidget {
  const WrapperScene({
    Key? key,
    this.sizeCanvas = const Size(350.0, 600.0),
    this.align = Alignment.center,
    this.decoration = const BoxDecoration(),
    this.clip = Clip.antiAlias,
    this.isLeftCornerGradient,
    required this.children,
    required this.colors,
  }) : super(key: key);

  /// Widget size. Default to [Size.infinite].
  final Size sizeCanvas;

  /// Position relative to parental constraints.
  ///
  /// Has no effect on [sizeCanvas] = [Size.infinite].
  ///
  /// Default to [Alignment.center].
  final Alignment align;

  /// Cropping parts that go beyond the contours [sizeCanvas].
  final Clip clip;

  /// Apply decorations to shape your scene.
  final Decoration decoration;

  /// Provide weather widgets [SunWidget], [CloudWidget], [SnowWidget] or others.
  ///
  /// Any other widgets can be presented to your liking.
  final List<Widget> children;

  final bool? isLeftCornerGradient;

  /// Scene background colors. See [BackgroundWidget] for more details.
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.tight(sizeCanvas),
        alignment: align,
        clipBehavior: clip,
        decoration: decoration,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final Size sizeConstraints = constraints.biggest;

            final double scaleTrue = math.min(
              sizeConstraints.height / sizeCanvas.height,
              sizeConstraints.width / sizeCanvas.width,
            );

            return BackgroundWidget(
              colors: colors,
              isLeftCorner: isLeftCornerGradient,
              child: Transform.scale(
                alignment: Alignment.topLeft,
                scale: scaleTrue,
                child: Stack(
                  children: children,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
