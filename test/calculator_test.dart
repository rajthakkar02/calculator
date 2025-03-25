import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Addition test', () {
    expect(calculator(8, "+", 2), 10);
    expect(calculator(-9, "+", 5), -4);
    expect(calculator(-9, "+", -9), -18);
    expect(calculator(-2, "+", 5), 3);
  });

  test('Subtraction test', () {
    expect(calculator(5, "-", 4), 1);
    expect(calculator(4.2, "-", 5.2), -1.0);
    expect(calculator(6, "-", -7), 13);
  });

  test('Multiplication test', () {
    expect(calculator(5, "*", 4), 20);
    expect(calculator(2, "*", -2), -4);
    expect(calculator(-4, "*", -4), 16);
  });

  test("Divide test", () {
    expect(calculator(4, "/", 2), 2);
    expect(calculator(4, "/", -2), -2);
    expect(calculator(-4, "/", -2), 2);
    expect(() => calculator(4, "/", 0), throwsA(TypeMatcher<ArgumentError>()));
  });

  test("Modulus test", () {
    expect(calculator(4, "%", 2), 0);
    expect(calculator(4, "%", -3), 1);
    expect(calculator(-4, "%", -3), -1);
    expect(() => calculator(4, "%", 0), throwsA(TypeMatcher<ArgumentError>()));
  });

  test("Power test", () {
    expect(calculator(4, "^", 2), 16);
    expect(calculator(4, "^", -2), 0.0625);
    expect(calculator(-4, "^", -2), 0.0625);
    expect(calculator(4, "^", 0), 1);
  });

  test("Power test", () {
    expect(calculator(4, "^2"), 16);
    expect(calculator(-4, "^2"), 16);
  });

  test("Square test", () {
    expect(calculator(4, "^2"), 16);
    expect(calculator(-4, "^2"), 16);
  });

  test("Cube test", () {
    expect(calculator(4, "^3"), 64);
    expect(calculator(-4, "^3"), -64);
  });

  test("Square root test", () {
    expect(calculator(4, "sqrt"), 2);
    expect(() => calculator(-4, "sqrt"), throwsA(TypeMatcher<ArgumentError>()));
  });
}
