import "dart:math";

double calculator(double number1, String operator, [number2]) {
  switch (operator) {
    case '+':
      if (number2 == null) {
        throw ArgumentError("Need a second operand");
      } else {
        return number1 + number2;
      }
    case '-':
      if (number2 == null) {
        throw ArgumentError("Require a second operand");
      } else {
        return number1 - number2;
      }
    case '*':
      if (number2 == null) {
        throw ArgumentError("Require a second operand");
      } else {
        return number1 * number2;
      }
    case '/':
      if (number2 == 0 || number2 == null) {
        throw ArgumentError("Cannot be divide by zero");
      } else {
        return number1 / number2;
      }
    case '%':
      if (number2 == 0 || number2 == null) {
        throw ArgumentError("Undefined");
      } else {
        return number1.remainder(number2);
      }
    case '^':
      if (number2 == null) {
        throw ArgumentError("Required a second operand");
      } else {
        num answer = pow(number1, number2);
        return answer.toDouble();
      }

    case '^2':
      num answer = pow(number1, 2.0);
      return answer.toDouble();
    case '^3':
      num answer = pow(number1, 3.0);
      return answer.toDouble();
    case 'sqrt':
      if (number1 < 0) {
        throw ArgumentError("Undefined");
      } else {
        return sqrt(number1);
      }
    default:
      throw ArgumentError("Invalid operator: $operator");
  }
}
