import 'package:flutter_test/flutter_test.dart';
import 'package:testing/email_validator.dart';

void main() {
  test('Valid email returns true', () {
    expect(EmailValidator.isValid('test@example.com'), true);
  });

  test('Invalid email returns false', () {
    expect(EmailValidator.isValid('invalid-email'), false);
  });
}
