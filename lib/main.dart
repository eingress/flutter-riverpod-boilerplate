import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appNameProvider = Provider<String>((_) => "Flutter Riverpod Boilerplate");

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

//

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String appName = ref.watch(appNameProvider);

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
