import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider((_) => "Flutter Riverpod Boilerplate");

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

//

class App extends HookWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String appName = useProvider(appNameProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Center(
          child: Text(appName),
        ),
      ),
    );
  }
}
