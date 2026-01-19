// MIT License
//
// Copyright (c) 2021 fuyumi
//
// Original repository:
// https://github.com/mchome/flutter_colorpicker

// ignore_for_file: prefer_final_locals, prefer_final_in_for_each, require_trailing_commas, no_leading_underscores_for_local_identifiers, prefer_if_elements_to_conditional_expressions, curly_braces_in_flow_control_structures, avoid_redundant_argument_values, unnecessary_parenthesis

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart'
    show useWhiteForeground;

export 'package:flutter_colorpicker/flutter_colorpicker.dart'
    show ColorPickerSlider, TrackType;

// The Color Picker which contains Material Design Color Palette.
class MaterialPicker extends StatefulWidget {
  const MaterialPicker({
    super.key,
    required this.pickerColor,
    required this.onColorChanged,
    this.onPrimaryChanged,
    this.enableLabel = false,
    this.portraitOnly = false,
  });

  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  final ValueChanged<Color>? onPrimaryChanged;
  final bool enableLabel;
  final bool portraitOnly;

  @override
  State<StatefulWidget> createState() => _MaterialPickerState();
}

class _MaterialPickerState extends State<MaterialPicker> {
  final List<List<Color>> _colorTypes = [
    [Colors.red, Colors.redAccent],
    [Colors.pink, Colors.pinkAccent],
    [Colors.purple, Colors.purpleAccent],
    [Colors.deepPurple, Colors.deepPurpleAccent],
    [Colors.indigo, Colors.indigoAccent],
    [Colors.blue, Colors.blueAccent],
    [Colors.lightBlue, Colors.lightBlueAccent],
    [Colors.cyan, Colors.cyanAccent],
    [Colors.teal, Colors.tealAccent],
    [Colors.green, Colors.greenAccent],
    [Colors.lightGreen, Colors.lightGreenAccent],
    [Colors.lime, Colors.limeAccent],
    [Colors.yellow, Colors.yellowAccent],
    [Colors.amber, Colors.amberAccent],
    [Colors.orange, Colors.orangeAccent],
    [Colors.deepOrange, Colors.deepOrangeAccent],
    [Colors.brown],
    [Colors.grey],
    [Colors.blueGrey],
    [Colors.black],
  ];

  List<Color> _currentColorType = [Colors.red, Colors.redAccent];
  Color _currentShading = Colors.transparent;

  List<Map<Color, String>> _shadingTypes(List<Color> colors) {
    List<Map<Color, String>> result = [];

    for (Color colorType in colors) {
      if (colorType == Colors.grey) {
        result.addAll([
          50,
          100,
          200,
          300,
          350,
          400,
          500,
          600,
          700,
          800,
          850,
          900
        ].map((int shade) => {Colors.grey[shade]!: shade.toString()}).toList());
      } else if (colorType == Colors.black || colorType == Colors.white) {
        result.addAll([
          {Colors.black: ''},
          {Colors.white: ''}
        ]);
      } else if (colorType is MaterialAccentColor) {
        result.addAll([100, 200, 400, 700]
            .map((int shade) => {colorType[shade]!: 'A$shade'})
            .toList());
      } else if (colorType is MaterialColor) {
        result.addAll([50, 100, 200, 300, 400, 500, 600, 700, 800, 900]
            .map((int shade) => {colorType[shade]!: shade.toString()})
            .toList());
      } else {
        result.add({const Color(0x00000000): ''});
      }
    }

    return result;
  }

  @override
  void initState() {
    for (List<Color> _colors in _colorTypes) {
      _shadingTypes(_colors).forEach((Map<Color, String> color) {
        if (widget.pickerColor.value32bit == color.keys.first.value32bit) {
          return setState(() {
            _currentColorType = _colors;
            _currentShading = color.keys.first;
          });
        }
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final orientation = MediaQuery.orientationOf(context);

    final isPortrait =
        orientation == Orientation.portrait || widget.portraitOnly;

    final colorsSection = Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      child: Container(
        margin: isPortrait
            ? const EdgeInsets.only(right: 10)
            : const EdgeInsets.only(bottom: 10),
        width: isPortrait ? 60 : null,
        height: isPortrait ? null : 60,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: theme.dividerColor)),
        ),
        child: ListView(
          scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
          children: [
            isPortrait
                ? const Padding(padding: EdgeInsets.only(top: 7))
                : const Padding(padding: EdgeInsets.only(left: 7)),
            for (final (index, [_colorType, ...]) in _colorTypes.indexed)
              GestureDetector(
                onTap: () {
                  widget.onPrimaryChanged?.call(_colorType);
                  setState(() => _currentColorType = _colorTypes[index]);
                },
                child: Container(
                  color: const Color(0x00000000),
                  padding: isPortrait
                      ? const EdgeInsets.fromLTRB(0, 7, 0, 7)
                      : const EdgeInsets.fromLTRB(7, 0, 7, 0),
                  child: Align(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: _colorType,
                        shape: BoxShape.circle,
                        boxShadow: _currentColorType == _colorTypes[index]
                            ? [
                                BoxShadow(
                                  color: _colorType == theme.cardColor
                                      ? Colors.grey[300]!
                                      : _colorType,
                                  blurRadius: 10,
                                ),
                              ]
                            : null,
                        border: _colorType == theme.cardColor
                            ? Border.all(color: Colors.grey[300]!, width: 1)
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: isPortrait ? 5 : null,
              width: isPortrait ? null : 5,
            ),
          ],
        ),
      ),
    );

    final shadingsSection = ListView(
      scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
      children: [
        isPortrait
            ? const Padding(padding: EdgeInsets.only(top: 15))
            : const Padding(padding: EdgeInsets.only(left: 15)),
        ..._shadingTypes(_currentColorType).map((Map<Color, String> color) {
          final Color _color = color.keys.first;
          return GestureDetector(
            onTap: () {
              setState(() => _currentShading = _color);
              widget.onColorChanged(_color);
            },
            child: Container(
              color: const Color(0x00000000),
              margin: isPortrait
                  ? const EdgeInsets.only(right: 10)
                  : const EdgeInsets.only(bottom: 10),
              padding: isPortrait
                  ? const EdgeInsets.fromLTRB(0, 7, 0, 7)
                  : const EdgeInsets.fromLTRB(7, 0, 7, 0),
              child: Align(
                child: AnimatedContainer(
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(milliseconds: 500),
                  width: isPortrait
                      ? (_currentShading == _color ? 250 : 230)
                      : (_currentShading == _color ? 50 : 30),
                  height: isPortrait ? 50 : 220,
                  decoration: BoxDecoration(
                    color: _color,
                    boxShadow: _currentShading == _color
                        ? [
                            BoxShadow(
                              color: _currentShading == _color
                                  ? Colors.grey[300]!
                                  : _color,
                              blurRadius: 10,
                            ),
                          ]
                        : null,
                    border: (_color == Colors.white) || (_color == Colors.black)
                        ? Border.all(color: Colors.grey[300]!, width: 1)
                        : null,
                  ),
                  child: widget.enableLabel
                      ? isPortrait
                          ? Row(
                              children: [
                                Text(
                                  '  ${color.values.first}',
                                  style: TextStyle(
                                    color: useWhiteForeground(_color)
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      '#${(_color.toString().replaceFirst('Color(0xff', '').replaceFirst(')', '')).toUpperCase()}  ',
                                      style: TextStyle(
                                        color: useWhiteForeground(_color)
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: _currentShading == _color ? 1 : 0,
                              child: Container(
                                padding: const EdgeInsets.only(top: 16),
                                alignment: Alignment.topCenter,
                                child: Text(
                                  color.values.first,
                                  style: TextStyle(
                                    color: useWhiteForeground(_color)
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                            )
                      : null,
                ),
              ),
            ),
          );
        }),
        SizedBox(
          height: isPortrait ? 15 : null,
          width: isPortrait ? null : 15,
        ),
      ],
    );

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context)
          .copyWith(dragDevices: PointerDeviceKind.values.toSet()),
      child: SizedBox(
        width: isPortrait ? 350 : null,
        height: isPortrait ? null : 300,
        child: Flex(
          direction: isPortrait ? Axis.horizontal : Axis.vertical,
          children: <Widget>[
            Padding(
              padding: isPortrait
                  ? EdgeInsets.zero
                  : const EdgeInsets.symmetric(horizontal: 4.0),
              child: colorsSection,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isPortrait ? 12.0 : 4.0,
                ),
                child: shadingsSection,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
