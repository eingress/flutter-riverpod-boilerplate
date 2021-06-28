import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider((_) => "Flutter Riverpod Boilerplate");

void main() {
  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}

//

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final String value = useProvider(appNameProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(value),
        ),
        body: Center(
          child: Text(value),
        ),
      ),
    );
  }
}
