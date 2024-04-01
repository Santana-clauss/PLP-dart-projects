import 'dart:io';

void main() {
  bool continueCalculating = true;

  while (continueCalculating) {
    print("Enter first number:");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Enter second number:");
    double num2 = double.parse(stdin.readLineSync()!);

    print("Select operation (+, -, *, /):");
    String operation = stdin.readLineSync()!;

    double result = 0;
    switch (operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          print("Error: Division by zero!");
          continue;
        }
        break;
      default:
        print("Invalid operation!");
        continue;
    }

    print("Result: $result");

    // Ask the user if they want to continue calculating
    print("Do you want to perform another calculation? (yes/no)");
    String response = stdin.readLineSync()!;

    if (response.toLowerCase() != 'yes') {
      continueCalculating = false;
    }
  }
}
