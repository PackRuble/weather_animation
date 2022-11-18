import 'package:flutter/foundation.dart';

extension HandyValueNotifier<T> on ValueNotifier<T> {
  T update(T Function(T state) cb) => value = cb(value);
}
