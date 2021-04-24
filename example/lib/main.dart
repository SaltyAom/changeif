import 'package:flutter/material.dart';

import 'package:niku/niku.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:changeif/changeif.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChangeIf Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NikuColumn([
        WithoutChangeIf(),
        Divider(),
        WithChangeIf(),
      ]).mainCenter().crossCenter().niku().fullWidth(),
    );
  }
}

class WithoutChangeIf extends HookWidget {
  build(context) {
    final counter = useState(0);

    final headline6 = Theme.of(context).textTheme.headline6;

    return NikuColumn([
      NikuText("Without ChangeIf").style(headline6),
      NikuText("Last rebuild: ${counter.value}"),
      NikuButton(Text("Counter: ${counter.value}"))
        ..onPressed(() {
          counter.value++;
        }),
    ]);
  }
}

class WithChangeIf extends HookWidget {
  build(context) {
    final counter = useState(0);

    final headline6 = Theme.of(context).textTheme.headline6;

    return NikuColumn([
      NikuText("With ChangeIf").style(headline6).changeIf(),
      NikuText("Last rebuild: ${counter.value}").changeIf(),
      NikuButton(Text("Counter: ${counter.value}"))
        ..onPressed(() {
          counter.value++;
        }),
    ]);
  }
}
