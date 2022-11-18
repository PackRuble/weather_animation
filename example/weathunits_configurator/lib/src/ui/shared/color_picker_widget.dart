import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart'
    show ColorPickerSlider, TrackType;
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

  void onColorChanged(Color color) {
    setState(() => pickerColor = color);
    widget.onColorChanged?.call(color);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                  fullThumbColor: false,
                  TrackType.alpha,
                  HSVColor.fromColor(pickerColor),
                  (HSVColor color) => onColorChanged(color.toColor()),
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
