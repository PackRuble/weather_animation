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
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: _WeathersOnScene(),
          ),
        ),
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
  const _WeathersOnScene({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scene = ref.watch(listWeathunitProvider);

    final sizeCanvas = ref.watch(MainController.sizeCanvas);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size sizeConstraints = constraints.biggest;

        final isBeyondCanvas = sizeConstraints.height < sizeCanvas.height ||
            sizeConstraints.width < sizeCanvas.width;

        return Center(
          child: WrapperScene(
            sizeCanvas: sizeCanvas, // desired canvas size
            colors: ref.watch(backgroundColorsProvider),
            isLeftCornerGradient:
                ref.watch(BackgroundColorsNotifier.isLeftCornerGradient),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: isBeyondCanvas
                  ? Border.all(
                      color: Colors.red,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      width: 4.0,
                    )
                  : Border.all(
                      width: 0.5,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
            ),
            children: [
              for (final unit in scene)
                _WeatherWidgetOnScene(key: ValueKey(unit.id), unit),
            ],
          ),
        );
      },
    );
  }
}

class _WeatherWidgetOnScene extends ConsumerWidget {
  const _WeatherWidgetOnScene(
    this.unit, {
    super.key,
  });

  final Weathunit unit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (unit.type) {
      TypeWeather.sun => SunWidget(sunConfig: unit.config as SunConfig),
      TypeWeather.rain => RainWidget(rainConfig: unit.config as RainConfig),
      TypeWeather.thunder =>
        ThunderWidget(thunderConfig: unit.config as ThunderConfig),
      TypeWeather.snow => SnowWidget(snowConfig: unit.config as SnowConfig),
      TypeWeather.cloud => CloudWidget(cloudConfig: unit.config as CloudConfig),
      TypeWeather.wind => WindWidget(windConfig: unit.config as WindConfig)
    };
  }
}

class SizerWidget extends ConsumerWidget {
  const SizerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = ref.watch(MainController.widthCanvas);
    final height = ref.watch(MainController.heightCanvas);

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
                value: width,
                onChanged: (double value) => ref
                    .read(MainController.widthCanvas.notifier)
                    .update((_) => value),
                isShowValue: true,
                isShowReset: true,
                onReset: () => ref.refresh(MainController.widthCanvas),
              ),
              SliderWidget(
                min: 0.0,
                max: 3000.0,
                value: height,
                onChanged: (double value) => ref
                    .read(MainController.heightCanvas.notifier)
                    .update((_) => value),
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
    super.key,
  });

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
