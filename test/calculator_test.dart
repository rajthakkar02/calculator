import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Addition test', () {
    expect(calculator(8, "+", 2), 10);
    expect(calculator(-9, "+", 5), -4);
    expect(calculator(-9, "+", -9), -18);
    expect(calculator(-2, "+", 5), 3);
    expect(() => calculator(-2, "+"), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Subtraction test', () {
    expect(calculator(5, "-", 4), 1);
    expect(calculator(4.2, "-", 5.2), -1.0);
    expect(calculator(6, "-", -7), 13);
    expect(() => calculator(-2, "-"), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Multiplication test', () {
    expect(calculator(5, "*", 4), 20);
    expect(calculator(2, "*", -2), -4);
    expect(calculator(-4, "*", -4), 16);
    expect(() => calculator(-2, "*"), throwsA(TypeMatcher<ArgumentError>()));
  });

  test("Divide test", () {
    expect(calculator(4, "/", 2), 2);
    expect(calculator(4, "/", -2), -2);
    expect(calculator(-4, "/", -2), 2);
    expect(() => calculator(4, "/", 0), throwsA(TypeMatcher<ArgumentError>()));
    expect(() => calculator(4, "/"), throwsA(TypeMatcher<ArgumentError>()));
  });

  test("Modulus test", () {
    expect(calculator(4, "%", 2), 0);
    expect(calculator(4, "%", -3), 1);
    expect(calculator(-4, "%", -3), -1);
    expect(() => calculator(4, "%", 0), throwsA(TypeMatcher<ArgumentError>()));
    expect(() => calculator(4, "%"), throwsA(TypeMatcher<ArgumentError>()));
  });

  test("Power test", () {
    expect(calculator(4, "^", 2), 16);
    expect(calculator(4, "^", -2), 0.0625);
    expect(calculator(-4, "^", -2), 0.0625);
    expect(calculator(4, "^", 0), 1);
    expect(() => calculator(-2, "^"), throwsA(TypeMatcher<ArgumentError>()));
  });

  test("AND Test", () {
    expect(calculator(4, "AND", 5), 4);
    expect(calculator(-4, "AND", -5), -8);
    expect(calculator(-4, "AND", 5), 4);
  });

  test("OR test", () {
    expect(calculator(4, "OR", 5), 5);
    expect(calculator(-4, "OR", -5), -1);
    expect(calculator(-4, "OR", 5), -3);
  });

  test("XOR test", () {
    expect(calculator(4, "XOR", 5), 1);
    expect(calculator(-4, "XOR", -5), 7);
    expect(calculator(-4, "XOR", 5), -7);
  });

  test("Square root test", () {
    expect(calculator(4, "sqrt"), 2);
    expect(() => calculator(-4, "sqrt"), throwsA(TypeMatcher<ArgumentError>()));
  });
}
