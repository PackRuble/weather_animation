import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/weathunits_controller.dart';
import '../../model/models.dart';
import '../shared/tool_bar_widget.dart';

class WeathunitSection extends ConsumerWidget {
  const WeathunitSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final scenes = ref.watch(listWeathunitProvider);

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Stack of Weathunits', style: theme.textTheme.headlineSmall),
          const Divider(),
          const _TileBgWidget(),
          if (scenes.isEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '➕Add Weathunit to Stack',
                style: theme.textTheme.titleMedium,
              ),
            ),
          Expanded(
            child: ReorderableList(
              itemBuilder: (BuildContext context, int index) {
                final item = scenes[index];

                return Material(
                  color: Colors.transparent,
                  key: ValueKey(item.id),
                  child: _TileSceneWidget(index, item),
                );
              },
              itemCount: scenes.length,
              onReorder: ref.read(listWeathunitProvider.notifier).move,
            ),
          ),
          const SizedBox(height: 4),
          ElevatedButton.icon(
            icon: const Icon(Icons.add_rounded),
            label: const Text('Add weather unit'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    children: [
                      for (final e in TypeWeather.values)
                        ListTile(
                          onTap: () {
                            ref.read(listWeathunitProvider.notifier).add(e);
                            Navigator.pop(context);
                          },
                          title: Text(e.name),
                        )
                    ],
                  );
                },
              );
            },
          ),
          const Divider(),
          const ToolBarWidget(),
        ],
      ),
    );
  }
}

class _TileBgWidget extends ConsumerWidget {
  const _TileBgWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final selected = ref.watch(selectedWeathunitProvider) == null;

    return ListTile(
      selected: selected,
      selectedTileColor: theme.primaryColor.withOpacity(0.3),
      onTap: () {
        // at null we show backgroundConfig
        ref.read(selectedWeathunitProvider.notifier).state = null;
      },
      trailing: Icon(
        Icons.chevron_right,
        color: theme.iconTheme.color,
      ),
      title: const Text('Background'),
    );
  }
}

class _TileSceneWidget extends ConsumerWidget {
  const _TileSceneWidget(
    this.index,
    this.item, {
    Key? key,
  }) : super(key: key);

  final int index;

  final Weathunit item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(selectedWeathunitProvider)?.id == item.id;
    final theme = Theme.of(context);

    return ListTile(
      leading: ReorderableDragStartListener(
        index: index,
        child: IconButton(
          icon: const Icon(Icons.drag_handle_rounded),
          onPressed: () {},
        ),
      ),
      selected: isSelected,
      selectedTileColor: theme.primaryColor.withOpacity(0.3),
      onTap: () => ref.read(selectedWeathunitProvider.notifier).state = item,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.content_copy_rounded),
            onPressed: () =>
                ref.read(listWeathunitProvider.notifier).copyAdd(index, item),
          ),
          IconButton(
            icon: const Icon(Icons.delete_forever_rounded),
            onPressed: () {
              if (isSelected) {
                ref.read(selectedWeathunitProvider.notifier).state = null;
              }
              ref.read(listWeathunitProvider.notifier).delete(index);
            },
          ),
        ],
      ),
      title: Text(item.type.name),
    );
  }
}
