library changeif;

import 'package:flutter/material.dart';

import "package:flutter_hooks/flutter_hooks.dart";

import 'package:niku/niku.dart';

extension ChangeIfExtension on Widget {
  T changeIf<T extends Widget>([List<Object?> keys = const <Object>[]]) =>
      useMemoized(
        () => this as T,
        keys,
      );
}

extension ChangeIfNiku on Niku {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      this..builder((child) => child.changeIf(keys));
}

extension ChangeIfNikuText on NikuText {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      Niku(this)..builder((child) => child.changeIf(keys));
}

extension ChangeIfNikuColumn on NikuColumn {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      Niku(this)..builder((child) => child.changeIf(keys));
}

extension ChangeIfNikuRow on NikuRow {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      Niku(this)..builder((child) => child.changeIf(keys));
}

extension ChangeIfNikuStack on NikuStack {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      Niku(this)..builder((child) => child.changeIf(keys));
}

extension ChangeIfNikuWrap on NikuWrap {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      Niku(this)..builder((child) => child.changeIf(keys));
}

extension ChangeIfNikuButton on NikuButton {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      Niku(this)..builder((child) => child.changeIf(keys));
}

extension ChangeIfNikuIconButton on NikuIconButton {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      Niku(this)..builder((child) => child.changeIf(keys));
}

extension ChangeIfNikuTextField on NikuTextField {
  Niku changeIf([List<Object?> keys = const <Object>[]]) =>
      Niku(this)..builder((child) => child.changeIf(keys));
}
