import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weathunits_configurator/src/controllers/main_controller.dart';
import 'package:weathunits_configurator/src/extension/hex_color.dart';

import '../shared/color_picker_widget.dart';

final _selectedTileIndexProvider = StateProvider<int?>((ref) => null);

final _selectedPickerProvider = StateProvider<Color?>((ref) => null);

final backgroundColorsProvider =
    StateNotifierProvider<BackgroundColorsNotifier, List<Color>>(
  (ref) {
    return BackgroundColorsNotifier(ref);
  },
);

class BackgroundColorsNotifier extends StateNotifier<List<Color>> {
  BackgroundColorsNotifier(this._ref)
      : super(_ref.watch(MainController.selectedWidgetScene)?.colors ?? []);

  final Ref _ref;

  static final isLeftCornerGradient = StateProvider<bool>((ref) =>
      ref.watch(MainController.selectedWidgetScene)?.isLeftCornerGradient ??
      false);

  void add(Color color) {
    state = [...state, color];
  }

  void delete(int index) {
    final newState = [...state]..removeAt(index);
    state = [...newState];
  }

  void update(int index, Color color) {
    final newState = List.of(state)..[index] = color;
    state = [...newState];
  }

  void move(int oldIndex, int newIndex) {
    final newState = [...state];

    int index = newIndex;
    if (oldIndex < index) {
      // removing the item at oldIndex will shorten the list by 1.
      index -= 1;
    }

    final element = newState.removeAt(oldIndex);
    newState.insert(index, element);

    state = [...newState];
  }
}

class BackgroundConfigWidget extends ConsumerWidget {
  const BackgroundConfigWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colors = ref.watch(backgroundColorsProvider);
    final colorsNotifier = ref.watch(backgroundColorsProvider.notifier);

    final selectedTileIndex = ref.watch(_selectedTileIndexProvider);

    return Column(
      children: [
        if (colors.length >= 2)
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: SwitchListTile(
              title: const Text('Change the corner of the gradient'),
              value: ref.watch(BackgroundColorsNotifier.isLeftCornerGradient),
              onChanged: (bool value) => ref
                  .read(BackgroundColorsNotifier.isLeftCornerGradient.notifier)
                  .state = value,
            ),
          ),
        Expanded(
          child: ReorderableList(
            itemBuilder: (BuildContext context, int index) {
              final item = colors[index];

              final isSelectedTile = selectedTileIndex == index;

              return Material(
                key: ValueKey(item.hashCode + index),
                color: Colors.transparent,
                child: ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (isSelectedTile)
                        _AnimatedIconDelete(
                          onPressed: () {
                            ref
                                .read(_selectedTileIndexProvider.notifier)
                                .state = null;
                          },
                        ),
                      ReorderableDragStartListener(
                        index: index,
                        child: Tooltip(
                          message: 'hold and pull to change the order',
                          waitDuration: const Duration(milliseconds: 800),
                          child: IconButton(
                            icon: Icon(Icons.circle_rounded, color: item),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text('Color(${item.hexMaterial})'),
                  selected: isSelectedTile,
                  selectedTileColor: theme.primaryColor.withOpacity(0.3),
                  onTap: () {
                    ref.read(_selectedTileIndexProvider.notifier).state = index;
                    ref.read(_selectedPickerProvider.notifier).state = item;
                  },
                  trailing: Tooltip(
                    message: 'remove the selected color',
                    waitDuration: const Duration(milliseconds: 800),
                    child: IconButton(
                      icon: const Icon(Icons.delete_forever_rounded),
                      onPressed: () {
                        if (isSelectedTile) {
                          ref.read(_selectedTileIndexProvider.notifier).state =
                              null;
                        }
                        colorsNotifier.delete(index);
                      },
                    ),
                  ),
                ),
              );
            },
            itemCount: colors.length,
            padding: const EdgeInsets.all(2.0),
            onReorder: (int old, int newIndex) {
              if (ref.read(_selectedTileIndexProvider.notifier).state == old) {
                if (old < newIndex) {
                  ref.read(_selectedTileIndexProvider.notifier).state =
                      newIndex - 1;
                } else {
                  ref.read(_selectedTileIndexProvider.notifier).state =
                      newIndex;
                }
              }
              colorsNotifier.move(old, newIndex);
            },
          ),
        ),
        const SizedBox(height: 8.0),
        ElevatedButton(
          onPressed: () {
            final selectedColor = ref.read(_selectedPickerProvider);
            if (selectedColor != null) {
              colorsNotifier.add(selectedColor);
            }
          },
          child: const Text('Add color'),
        ),
        const SizedBox(height: 8.0),
        const Divider(thickness: 1.0, height: 0.0),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: _PickerWidget(),
        ),
      ],
    );
  }
}

class _PickerWidget extends ConsumerWidget {
  const _PickerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTileIndex = ref.watch(_selectedTileIndexProvider);

    final selectedPicker = ref.watch(_selectedPickerProvider);

    return ColorPickerWidget(
      key: ValueKey(selectedTileIndex),
      color: selectedPicker,
      onColorChanged: (Color color) {
        if (selectedTileIndex != null) {
          ref
              .read(backgroundColorsProvider.notifier)
              .update(selectedTileIndex, color);
        }

        ref.watch(_selectedPickerProvider.notifier).state = color;
      },
      // color: item,
    );
  }
}

class _AnimatedIconDelete extends StatefulWidget {
  const _AnimatedIconDelete({required this.onPressed, Key? key})
      : super(key: key);

  final Function() onPressed;

  @override
  State<_AnimatedIconDelete> createState() => _AnimatedIconDeleteState();
}

class _AnimatedIconDeleteState extends State<_AnimatedIconDelete>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    animation = Tween<double>(begin: 0.25, end: 0.5)
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Tooltip(
      message: 'exit color editing mode',
      waitDuration: const Duration(milliseconds: 800),
      child: RotationTransition(
        turns: animation,
        child: IconButton(
          icon: Icon(Icons.close_rounded, color: theme.iconTheme.color),
          onPressed: widget.onPressed,
        ),
      ),
    );
  }
}
