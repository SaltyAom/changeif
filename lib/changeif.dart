library changeif;

import 'package:flutter/material.dart';

import "package:flutter_hooks/flutter_hooks.dart";

extension ChangeIf on Widget {
  T changeIf<T extends Widget>([List<Object?> keys = const <Object>[]]) =>
      useMemoized(
        () => this as T,
        keys,
      );
}
