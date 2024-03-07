import 'dart:io';

void main() {
  stdout.write("Enter a number: "); 
  String? input = stdin.readLineSync();

  if (input != null) {
    try {
      int num = int.parse(input); 
      if (num % 2 == 0) {
        print("The number $num is even.");
      } else {
        print("The number $num is odd.");
      }
    } catch (e) {
      print("Invalid input: Please enter a valid integer.");
    }
  } else {
    print("No input received.");
  }
}
