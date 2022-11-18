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
    const title = 'Weather backgrounds';

    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp(
      key: ref.watch(MainController.forcedUpdate),
      title: title,
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

    Widget child = MultiSplitView(
      axis: Axis.horizontal,
      initialAreas: [
        Area(weight: .40, minimalWeight: .25),
        Area(weight: .28, minimalWeight: .20),
        Area(weight: .32, minimalWeight: .25),
      ],
      children: const [
        SceneSection(),
        WeathunitSection(),
        ConfigSection(),
      ],
    );

    return MultiSplitViewTheme(
      data: MultiSplitViewThemeData(
        dividerThickness: 4.0,
        dividerPainter: DividerPainters.grooved1(
          color: theme.colorScheme.primary,
          highlightedColor: theme.colorScheme.secondary,
          thickness: 2.0,
          size: 30.0,
          backgroundColor: theme.dividerColor,
          highlightedBackgroundColor: theme.dividerColor.withOpacity(.3),
          highlightedThickness: 3.0,
          highlightedSize: 65.0,
        ),
      ),
      child: child,
    );
  }
}

class FullscreenView extends ConsumerWidget {
  const FullscreenView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: const [
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
