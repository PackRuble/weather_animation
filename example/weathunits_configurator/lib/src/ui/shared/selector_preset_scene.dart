import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_animation/weather_animation.dart';
import 'package:weathunits_configurator/src/controllers/main_controller.dart';

import 'tooltip_widget.dart';

class PresetScenesDropButton extends ConsumerWidget {
  const PresetScenesDropButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final WeatherScene? selectedScene = ref.watch(MainController.selectedScene);
    final allScenes = ref.watch(MainController.allScenes);

    return CTooltip(
      message: 'Select a weather scene from the preset scenes',
      child: DropdownButton<WeatherScene>(
        value: selectedScene,
        onChanged: (_) {},
        // underline: Container(),
        icon: const Padding(
          padding: EdgeInsets.only(right: 4.0),
          child: Icon(Icons.collections),
        ),
        items: allScenes
            .map((e) => DropdownMenuItem(
                value: e,
                onTap: () =>
                    ref.read(MainController.selectedScene.notifier).state = e,
                child: Text(e.name)))
            .toList()
          ..add(DropdownMenuItem(
            onTap: () =>
                ref.read(MainController.selectedScene.notifier).state = null,
            child: const Text('empty'),
          )),
        selectedItemBuilder: (_) {
          Widget wrap(String name) {
            return Container(
              alignment: AlignmentDirectional.centerStart,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(name),
            );
          }

          return [
            for (final item in allScenes) wrap(item.name),
            wrap('empty'),
          ];
        },
      ),
    );
  }
}
