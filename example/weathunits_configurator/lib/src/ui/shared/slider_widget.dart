import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

// number maybe only == (100.0, 10.0, 1.0, 0.1, 0.01)
int _getCountDecimal(num value) {
  // for web platform
  //
  // Expression	  Native toString()	  Web toString()
  // 1	          "1"	                "1"
  // 1.0	        "1.0"	              "1"
  // (0.5 + 0.5)	"1.0"	              "1"
  // 1.5	        "1.5"	              "1.5"
  //
  // more https://dart.dev/guides/language/numbers
  if (value is int) return 1;

  // for other platform
  return value.toString().split('.')[1].length;
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    super.key,
    required this.onChanged,
    this.onChangeEnd,
    required this.value,
    required this.min,
    this.max,
    this.autoMax,
    this.interval = 1.0,
    this.isShowDecimal = false,
    this.isShowScale = false,
    this.isShowValue = false,
    this.isShowReset = false,
    this.onReset,
  })  : assert(
            (isShowReset && onReset != null) ||
                (!isShowReset && onReset == null),
            'Both parameters must be specified. If `isShowReset`=true '
            'then `onReset` cannot be null'),
        assert(max != null || autoMax != null,
            'The maximum value must be specified, in the only way'),
        assert((autoMax ?? 2) > 1);

  final double value;
  final double min;
  final double? max;
  final double? autoMax;
  final double interval;
  final bool isShowValue;
  final bool isShowDecimal;
  final bool isShowScale;
  final bool isShowReset;
  final void Function()? onReset;
  final ValueChanged<double>? onChanged;
  final ValueChanged<double>? onChangeEnd;

  @override
  State createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  Timer? _timer;

  late double _value;
  late double _min;
  late double _max;
  late double _interval;

  int get divisions {
    final result = (_max - _min) ~/ _interval;
    return result > 0 ? result : 1;
  }

  @override
  void initState() {
    super.initState();

    _interval = widget.interval;
    _min = widget.min;

    _value = widget.value;

    if (widget.autoMax != null) {
      _max = math.pow(_value.abs(), widget.autoMax!).ceilToDouble() + 1;
    } else {
      _max = widget.max ?? _min + _value;
    }

    normalized();
  }

  void normalized() {
    if (_value < _min) {
      _min = -math.pow(_value.abs(), 1.1).ceilToDouble() - 1;
    }

    if (_value > _max) {
      _max = math.pow(_value.abs(), 1.1).ceilToDouble() + 1;
    }
  }

  /// The minimum lower limit is 0.01, the maximum limit is 100.
  ///
  /// If the interval was not initially defined within the given limits,
  /// nothing happens.
  void nextScale() {
    if (0.01 <= _interval && _interval < 100) {
      _interval *= 10;
      setState(() {});
    } else if (_interval == 100) {
      _interval = 0.01;
      setState(() {});
    }
  }

  /// Increase the maximum and minimum limits.
  void expandRange() {
    setState(() {
      final oldMin = _min;
      _min -= (_max * 2).abs();
      _max += (oldMin * 2).abs();
    });
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    widget.onChanged?.call(_value);
  }

  void onChanged(double value) {
    setState(() {
      final countDecimal = _getCountDecimal(_interval);

      _value =
          double.parse(value.clamp(_min, _max).toStringAsFixed(countDecimal));
    });
  }

  void _decrease() => onChanged(_value - _interval);

  void _increase() => onChanged(_value + _interval);

  void _startTimer(void Function() method) {
    _timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      method.call();
    });
  }

  void _stopTimer() => _timer?.cancel();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.isShowValue)
            SizedBox(
              width: 60.0,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(_value.toString(),
                        style: theme.textTheme.labelLarge)),
              ),
            ),
          Flexible(
            child: SizedBox(
              height: 36,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Theme.of(context).primaryColor),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.isShowDecimal) ...[
                      const SizedBox(width: 2.0),
                      Tooltip(
                        message: 'use a different precision',
                        waitDuration: const Duration(milliseconds: 800),
                        child: TextButton(
                          onPressed: nextScale,
                          child: Text(_interval.toString()),
                        ),
                      )
                    ],
                    const SizedBox(width: 2.0),
                    _ButtonSlider(
                      iconData: Icons.chevron_left_rounded,
                      onTap: _decrease,
                      onLongPress: () => _startTimer(_decrease),
                      onLongPressUp: _stopTimer,
                    ),
                    Flexible(
                      child: Slider(
                        value: _value,
                        label: _value.toString(),
                        min: _min,
                        max: _max,
                        divisions: divisions,
                        onChangeEnd: widget.onChangeEnd,
                        onChanged: onChanged,
                      ),
                    ),
                    _ButtonSlider(
                      iconData: Icons.chevron_right_rounded,
                      onTap: _increase,
                      onLongPress: () => _startTimer(_increase),
                      onLongPressUp: _stopTimer,
                    ),
                    const SizedBox(width: 2.0),
                    if (widget.isShowScale) ...[
                      const SizedBox(width: 2.0),
                      Tooltip(
                        message: 'increase interval',
                        waitDuration: const Duration(milliseconds: 800),
                        child: IconButton(
                          padding: const EdgeInsets.all(4.0),
                          onPressed: expandRange,
                          icon: const Icon(
                            Icons.settings_ethernet_outlined,
                          ),
                        ),
                      )
                    ],
                  ],
                ),
              ),
            ),
          ),
          if (widget.isShowReset) ...[
            const SizedBox(width: 2.0),
            Tooltip(
              message: 'reset to default',
              waitDuration: const Duration(milliseconds: 800),
              child: IconButton(
                onPressed: widget.onReset,
                icon: Icon(
                  Icons.restart_alt_rounded,
                  color: theme.iconTheme.color,
                ),
              ),
            )
          ],
          const SizedBox(width: 2.0),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant SliderWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _value = widget.value;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

class _ButtonSlider extends StatelessWidget {
  const _ButtonSlider({
    super.key,
    required this.onTap,
    required this.onLongPress,
    required this.onLongPressUp,
    required this.iconData,
  });

  final IconData iconData;

  final Function() onTap;

  final Function() onLongPress;

  final Function() onLongPressUp;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onLongPress: onLongPress,
      onLongPressUp: onLongPressUp,
      child: IconButton(
        padding: const EdgeInsets.all(2.0),
        visualDensity: VisualDensity.compact,
        onPressed: onTap,
        icon: Icon(
          iconData,
          color: theme.iconTheme.color,
        ),
      ),
    );
  }
}
