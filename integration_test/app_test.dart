import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/main.dart';
import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Login flow test", (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byKey(const Key('emailField')), "test@example.com");
    await tester.enterText(find.byKey(const Key('passwordField')), "1234");

    await tester.tap(find.byKey(const Key('loginButton')));
    await tester.pump();

    expect(find.text("Login Success"), findsOneWidget);
  });
}