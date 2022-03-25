import 'package:flutter_festival/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Testing addition operation", () {
    int left = 2;
    int right = 2;

    final result = Operations.add(left, right);
    expect(result, equals(4));
  });
  test("Testing multiplication operation", () {
    int left = 2;
    int right = 2;

    final result = Operations.multiply(left, right);
    expect(result, equals(4));
  });
  test("Testing division operation", () {
    int left = 2;
    int right = 2;

    final result = Operations.divide(left, right);
    expect(result, equals(1));
  });
}
