import 'package:flutter/material.dart';

/// The widget is used to customize the background of the weathers widget scene.
class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    required this.colors,
    required this.child,
    bool? isLeftCorner,
  }) : isLeftCorner = isLeftCorner ?? false;

  /// List of colors for creating a linear gradient.
  final List<Color> colors;

  /// Gradient direction.
  final bool isLeftCorner;

  /// Widget to which you need to add a background.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return switch (colors.length) {
      0 => child,
      1 => ColoredBox(color: colors.first, child: child),
      _ => DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: isLeftCorner ? Alignment.topRight : Alignment.topLeft,
              end: isLeftCorner ? Alignment.bottomLeft : Alignment.bottomRight,
            ),
          ),
          child: child,
        ),
    };
  }
}
