# changeif
#### This package is design for [Niku](https://pub.dev/packages/niku) and [Flutter Hook](https://pub.dev/packages/flutter_hooks).
Flutter Hook's useMemoized as dot notation.

Rebuild widget if the provided value is change (only work with HookWidget and State).

Requirement:
- Niku
- Flutter Hook

Example usage
```dart
class WithChangeIf extends HookWidget {
  build(context) {
    final counter = useState(0);

    return NikuColumn([
      NikuText("Will not be rebuild ${counter.value}").changeIf(),
      NikuButton(Text("Counter: ${counter.value}"))
        ..onPressed(() {
          counter.value++;
        }),
    ]);
  }
}
```
