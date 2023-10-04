import 'package:flutter/material.dart';
import 'package:weathunits_configurator/src/ui/shared/slider_widget.dart';

void main() => runApp(const MaterialApp(home: TestSlider()));

class TestSlider extends StatelessWidget {
  const TestSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SliderWidget(
          onChanged: null,
          value: 5,
          isShowReset: true,
          onReset: () {},
          isShowValue: true,
          min: 0,
          max: 120,
        ),
      ),
    );
  }
}
