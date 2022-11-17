import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
    required this.colors,
    required this.child,
    bool? isLeftCorner,
  })  : isLeftCorner = isLeftCorner ?? false,
        super(key: key);

  /// You must specify 2 or more colors to get a gradient.
  final List<Color> colors;

  final bool isLeftCorner;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Widget widget = () {
      switch (colors.length) {
        case 0:
          return child;
        case 1:
          return ColoredBox(color: colors.first, child: child);
        case 2:
        default:
          return DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: isLeftCorner ? Alignment.topRight : Alignment.topLeft,
                end:
                    isLeftCorner ? Alignment.bottomLeft : Alignment.bottomRight,
              ),
            ),
            child: child,
          );
      }
    }();

    return widget;
  }
}
