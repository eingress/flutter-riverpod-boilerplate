import 'package:flutter_test/flutter_test.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_riverpod_boilerplate/main.dart';

void main() {
  testWidgets('app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: App()));
  });
}
