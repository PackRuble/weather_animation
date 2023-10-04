import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '_material_picker.dart';

class ColorPickerWidget extends ConsumerStatefulWidget {
  const ColorPickerWidget({
    this.onColorChanged,
    this.color,
    Key? key,
  }) : super(key: key);

  final ValueChanged<Color>? onColorChanged;

  final Color? color;

  @override
  ConsumerState createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends ConsumerState<ColorPickerWidget> {
  late Color pickerColor = widget.color ?? Colors.amber.shade100;

  void onColorChanged(Color color, [int? alpha]) {
    final Color newColor = color.withAlpha(alpha ?? pickerColor.alpha);

    setState(() => pickerColor = newColor);
    widget.onColorChanged?.call(newColor);
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constr) {
              return SizedBox(
                height: 40.0,
                width: constr.maxWidth - 8,
                child: ColorPickerSlider(
                  displayThumbColor: true,
                  // ignore: avoid_redundant_argument_values
                  fullThumbColor: false,
                  TrackType.alpha,
                  HSVColor.fromColor(pickerColor),
                  (HSVColor color) {
                    final newColor = color.toColor();
                    onColorChanged(newColor, newColor.alpha);
                  },
                ),
              );
            },
          ),
          const Divider(height: 0),
          SizedBox(
            height: 130,
            child: MaterialPicker(
              pickerColor: pickerColor,
              onColorChanged: onColorChanged,
              onPrimaryChanged: onColorChanged,
            ),
          ),
        ],
      ),
    );
  }
}
