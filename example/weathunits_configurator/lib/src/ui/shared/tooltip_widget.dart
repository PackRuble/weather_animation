import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CTooltip extends ConsumerWidget {
  const CTooltip({
    Key? key,
    required this.child,
    required this.message,
  }) : super(key: key);

  final Widget child;
  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Tooltip(
      message: message,
      waitDuration: const Duration(milliseconds: 800),
      child: child,
    );
  }
}
