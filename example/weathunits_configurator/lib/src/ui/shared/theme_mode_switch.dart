import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final themeModeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.system;
});

class ThemeModeSwitch extends ConsumerWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(themeModeProvider);

    return _ThemeModeSwitch(
      themeMode: themeMode,
      onChanged: (ThemeMode value) =>
          ref.read(themeModeProvider.notifier).update((_) => value),
    );
  }
}

class _ThemeModeSwitch extends StatelessWidget {
  const _ThemeModeSwitch({
    // ignore: unused_element
    super.key,
    required this.themeMode,
    required this.onChanged,
  });

  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onChanged;

  @override
  Widget build(BuildContext context) {
    final List<bool> isSelected = <bool>[
      themeMode == ThemeMode.light,
      themeMode == ThemeMode.system,
      themeMode == ThemeMode.dark,
    ];

    return ToggleButtons(
      renderBorder: false,
      isSelected: isSelected,
      onPressed: (int newIndex) {
        onChanged(switch (newIndex) {
          0 => ThemeMode.light,
          1 => ThemeMode.system,
          2 || _ => ThemeMode.dark,
        });
      },
      children: const <Widget>[
        Icon(Icons.wb_sunny_rounded),
        Icon(Icons.phone_iphone_rounded),
        Icon(Icons.dark_mode_rounded),
      ],
    );
  }
}
