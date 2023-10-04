import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weathunits_configurator/src/extension/hex_color.dart';

import '../../controllers/weathunits_controller.dart';
import '../../model/models.dart';
import '../shared/color_picker_widget.dart';
import '../shared/slider_widget.dart';
import 'config_background_widget.dart';

class ConfigSection extends ConsumerWidget {
  const ConfigSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final Weathunit? currentConfig = ref.watch(selectedWeathunitProvider);
    final configNotifier = ref.watch(listWeathunitProvider.notifier);

    Widget child;

    // at null we show backgroundConfig
    if (currentConfig == null) {
      child = const BackgroundConfigWidget();
    } else {
      final Map<String, dynamic> data = configNotifier.rawWeathConfig!;

      List<Widget> children = [];

      // not included entries (i.e BlurStyle, Curve)
      // final List<MapEntry> notIncludedEntry = [];

      for (final entry in data.entries) {
        Widget? tileChild;

        if (entry.value is double) {
          final tEntry = MapEntry(entry.key, entry.value as double);

          tileChild = _TileConfigWidget<double>(
            entry: tEntry,
            onChanged: (double value) {
              ref.read(listWeathunitProvider.notifier).updateRaw(
                    MapEntry(tEntry.key, value),
                    currentConfig,
                  );
            },
          );
        } else if (entry.value is int) {
          final tEntry = MapEntry(entry.key, entry.value as int);

          tileChild = _TileConfigWidget<int>(
            entry: tEntry,
            onChanged: (double value) {
              ref.read(listWeathunitProvider.notifier).updateRaw(
                    MapEntry(tEntry.key, value.toInt()),
                    currentConfig,
                  );
            },
          );
        } else if (entry.value is bool) {
          final tEntry = MapEntry(entry.key, entry.value as bool);

          tileChild = SwitchListTile(
            key: ValueKey(tEntry.key),
            value: tEntry.value,
            secondary: Text('<${tEntry.value.runtimeType}>'),
            title: Text('${tEntry.key}: ${tEntry.value}'),
            onChanged: (bool value) {
              ref.read(listWeathunitProvider.notifier).updateRaw(
                    MapEntry(tEntry.key, value),
                    currentConfig,
                  );
            },
          );

          // at the moment only colors save as String
        } else if (entry.value is String) {
          final tEntry = MapEntry(entry.key, entry.value as String);

          tileChild = _ColorPick(
            entry: tEntry,
            onColorChanged: (Color color) {
              ref.read(listWeathunitProvider.notifier).updateRaw(
                    MapEntry(tEntry.key, color.value.toString()),
                    currentConfig,
                  );
            },
          );
        } else {
          // notIncludedEntry.add(entry);
          continue;
        }

        children = [
          ...children,
          tileChild,
          const Divider(thickness: 1, height: 10),
        ];
      }

      /// we cannot add missing fields because they're not in json.
      //
      // final buffer = StringBuffer();
      //
      // for (final entry in notIncludedEntry) {
      //   buffer.write('${entry.key}, ');
      // }
      //
      // if (buffer.isNotEmpty) {
      //   children = [
      //     ...children,
      //     const Divider(thickness: 1, height: 4),
      //     ListTile(
      //       title: const Text('You can edit these fields manually'),
      //       subtitle: Text(buffer.toString()),
      //     ),
      //   ];
      // }

      child = ListView(
        key: ValueKey(currentConfig.id),
        padding: const EdgeInsets.all(8.0),
        children: children,
      );
    }

    return Column(
      children: [
        const SizedBox(height: 4.0),
        Text('Configurator', style: theme.textTheme.headlineSmall),
        const SizedBox(height: 4.0),
        const Divider(thickness: 1.0, height: 0.0),
        const SizedBox(height: 4.0),
        Flexible(
          child: child,
        ),
      ],
    );
  }
}

class _ColorPick extends ConsumerWidget {
  const _ColorPick({
    this.onColorChanged,
    required this.entry,
    Key? key,
  }) : super(key: key);

  final ValueChanged<Color>? onColorChanged;

  final MapEntry<String, String> entry;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final field = entry.key;
    final value = int.parse(entry.value);

    final color = Color(value);

    return Column(
      key: ValueKey(field),
      children: [
        ListTile(
          minVerticalPadding: 0.0,
          // tileColor: color,
          leading: Text('<${value.runtimeType}>'),
          title: Text('$field: Color(${color.hexMaterial})'),
          trailing: IconButton(
            icon: const Icon(Icons.copy_rounded),
            onPressed: () async {
              final scMes = ScaffoldMessenger.of(context);

              final text = '$field: Color(${color.hexMaterial}),';

              await Clipboard.setData(ClipboardData(text: text));

              scMes.showSnackBar(
                const SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text('A line of code copied!'),
                ),
              );
            },
          ),
        ),
        ColorPickerWidget(
          onColorChanged: onColorChanged,
          color: color,
        )
      ],
    );
  }
}

class _TileConfigWidget<T extends num> extends ConsumerWidget {
  const _TileConfigWidget({
    required this.entry,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final MapEntry<String, T> entry;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final field = entry.key;
    final value = entry.value;

    return Column(
      key: ValueKey(field),
      children: [
        ListTile(
          minVerticalPadding: 0.0,
          visualDensity: VisualDensity.compact,
          leading: Text('<${value.runtimeType}>'),
          title: Text('$field: $value'),
          trailing: IconButton(
            icon: const Icon(Icons.copy_rounded),
            onPressed: () async {
              final scMes = ScaffoldMessenger.of(context);

              final text = '$field: $value,';

              await Clipboard.setData(ClipboardData(text: text));

              scMes.showSnackBar(
                const SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text('A line of code copied!'),
                ),
              );
            },
          ),
        ),
        SliderWidget(
          onChanged: onChanged,
          value: value.toDouble(),
          min: 0,
          isShowDecimal: true,
          isShowScale: true,
          autoMax: 1.15,
        ),
      ],
    );
  }
}
