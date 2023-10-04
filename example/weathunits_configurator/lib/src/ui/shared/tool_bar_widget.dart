import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weathunits_configurator/src/ui/about/about_widget.dart';

import '../../controllers/main_controller.dart';
import '../../utils/code_generator.dart';
import 'container_for_buttons.dart';
import 'theme_mode_switch.dart';
import 'tooltip_widget.dart';

class ToolBarWidget extends ConsumerWidget {
  const ToolBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 45,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: [
              SizedBox(width: 4.0),
              CContainer(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _CopyCodeButton(),
                    _FullscreenButton(),
                    _UpdateForceButton(),
                  ],
                ),
              ),
              SizedBox(width: 8.0),
              CContainer(child: AboutButton()),
              SizedBox(width: 8.0),
              CContainer(child: ThemeModeSwitch()),
              SizedBox(width: 4.0),
            ],
          ),
        ),
      ),
    );
  }
}

class _FullscreenButton extends ConsumerWidget {
  const _FullscreenButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onFullScreen = ref.watch(MainController.onFullScreen);

    return CTooltip(
      message: 'Expand/Collapse to full screen',
      child: IconButton(
        onPressed: () => ref
            .read(MainController.onFullScreen.notifier)
            .update((state) => !state),
        icon: Icon(
          onFullScreen
              ? Icons.close_fullscreen_rounded
              : Icons.open_in_full_rounded,
        ),
      ),
    );
  }
}

class _CopyCodeButton extends ConsumerWidget {
  const _CopyCodeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CTooltip(
      message: 'Copy the code to the clipboard',
      child: IconButton(
        onPressed: () async {
          final scMes = ScaffoldMessenger.of(context);

          await Clipboard.setData(ClipboardData(text: getCode(ref)));

          scMes.showSnackBar(
            const SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text('The code has been copied!'),
            ),
          );
        },
        icon: const Icon(Icons.integration_instructions_outlined),
      ),
    );
  }
}

class _UpdateForceButton extends ConsumerWidget {
  const _UpdateForceButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CTooltip(
      message:
          'Click this button in case of problems with displaying weather widgets on scene',
      child: IconButton(
        onPressed: () => ref.invalidate(MainController.forcedUpdate),
        icon: const Icon(Icons.sync_problem_rounded),
      ),
    );
  }
}
