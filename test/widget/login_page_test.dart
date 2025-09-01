import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/login_page.dart';

void main() {
  testWidgets('Login form has email, password and button', (tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    expect(find.byKey(const Key('emailField')), findsOneWidget);
    expect(find.byKey(const Key('passwordField')), findsOneWidget);
    expect(find.byKey(const Key('loginButton')), findsOneWidget);
  });
}