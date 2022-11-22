import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_animation/weather_animation.dart';

import '../../controllers/main_controller.dart';
import '../../controllers/weathunits_controller.dart';
import '../../model/models.dart';
import '../configs/config_background_widget.dart';
import '../shared/slider_widget.dart';

class SceneSection extends ConsumerWidget {
  const SceneSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Flexible(
            child: Padding(
          padding: EdgeInsets.all(6.0),
          child: _WeathersOnScene(),
        )),
        Divider(height: 0, thickness: 1.0),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: SizerWidget(),
        ),
      ],
    );
  }
}

class _WeathersOnScene extends ConsumerWidget {
  const _WeathersOnScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scene = ref.watch(listWeathunitProvider);

    final sizeCanvas = ref.watch(MainController.sizeCanvas);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size sizeConstraints = constraints.biggest;

        final isBeyondCanvas = sizeConstraints.height < sizeCanvas.height ||
            sizeConstraints.width < sizeCanvas.width;

        return WrapperScene(
          sizeCanvas: sizeCanvas, // desired canvas size
          colors: ref.watch(backgroundColorsProvider),
          isLeftCornerGradient:
              ref.watch(BackgroundColorsNotifier.isLeftCornerGradient),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: isBeyondCanvas
                ? Border.all(
                    color: Colors.red,
                    strokeAlign: StrokeAlign.outside,
                    width: 4.0,
                  )
                : Border.all(
                    width: 0.5,
                    strokeAlign: StrokeAlign.outside,
                  ),
          ),
          children: [
            for (final unit in scene)
              _WeatherWidgetOnScene(key: ValueKey(unit.id), unit),
          ],
        );
      },
    );
  }
}

class _WeatherWidgetOnScene extends ConsumerWidget {
  const _WeatherWidgetOnScene(
    this.unit, {
    Key? key,
  }) : super(key: key);

  final Weathunit unit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (unit.type) {
      case TypeWeather.sun:
        return SunWidget(sunConfig: unit.config as SunConfig);
      case TypeWeather.rain:
        return RainsWidget(rainConfig: unit.config as RainConfig);
      case TypeWeather.thunder:
        return ThundersWidget(thunderConfig: unit.config as ThunderConfig);
      case TypeWeather.snow:
        return SnowWidget(snowConfig: unit.config as SnowConfig);
      case TypeWeather.cloud:
        return CloudWidget(cloudConfig: unit.config as CloudConfig);
      case TypeWeather.wind:
        return WindWidget(windConfig: unit.config as WindConfig);
    }
  }
}

class SizerWidget extends ConsumerWidget {
  const SizerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = ref.watch(MainController.widthCanvas.state);
    final height = ref.watch(MainController.heightCanvas.state);

    final theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(width: 4.0),
        const _AspectRatioWidget(),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SliderWidget(
                min: 0.0,
                max: 3000.0,
                value: width.state,
                onChanged: (double value) => width.state = value,
                isShowValue: true,
                isShowReset: true,
                onReset: () => ref.refresh(MainController.widthCanvas),
              ),
              SliderWidget(
                min: 0.0,
                max: 3000.0,
                value: height.state,
                onChanged: (double value) => height.state = value,
                isShowValue: true,
                isShowReset: true,
                onReset: () => ref.refresh(MainController.heightCanvas),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AspectRatioWidget extends ConsumerWidget {
  const _AspectRatioWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final sizeCanvas = ref.watch(MainController.sizeCanvas);

    return Text(
      sizeCanvas.aspectRatio.toStringAsFixed(2),
      style: theme.textTheme.titleMedium,
    );
  }
}
