import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_split_view/multi_split_view.dart';

import 'controllers/main_controller.dart';
import 'theme.dart';
import 'ui/configs/config_units_widget.dart';
import 'ui/scene/scene_section.dart';
import 'ui/shared/theme_mode_switch.dart';
import 'ui/shared/tool_bar_widget.dart';
import 'ui/weathunits/weathunit_section.dart';

class EditorScenesApp extends ConsumerWidget {
  const EditorScenesApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp(
      key: ref.watch(MainController.forcedUpdate),
      title: 'Weathunits configurator',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: const Scaffold(body: HomePage()),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final onFullScreen = ref.watch(MainController.onFullScreen);

    if (onFullScreen) return const FullscreenView();

    return MultiSplitViewTheme(
      data: MultiSplitViewThemeData(
        dividerThickness: 6.0,
        dividerPainter: DividerPainters.grooved1(
          color: theme.colorScheme.primary,
          highlightedColor: theme.colorScheme.secondary,
          // ignore: avoid_redundant_argument_values
          thickness: 4.0,
          size: 30.0,
          backgroundColor: theme.dividerColor,
          highlightedBackgroundColor: theme.dividerColor.withOpacity(.3),
          highlightedThickness: 3.0,
          highlightedSize: 65.0,
        ),
      ),
      child: MultiSplitView(
        // ignore: avoid_redundant_argument_values
        axis: Axis.horizontal,
        initialAreas: [
          Area(flex: .40, min: .25),
          Area(flex: .28, min: .20),
          Area(flex: .32, min: .25),
        ],
        builder: (context, area) => const [
          SceneSection(),
          WeathunitSection(),
          ConfigSection(),
        ][area.index],
      ),
    );
  }
}

class FullscreenView extends ConsumerWidget {
  const FullscreenView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Flexible(child: SceneSection()),
        Divider(height: 0.0, thickness: 1.0),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: ToolBarWidget(),
        ),
      ],
    );
  }
}
