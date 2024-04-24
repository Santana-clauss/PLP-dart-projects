import 'dart:async';
import 'dart:io';

void main() {
  intro();
  choosePath();
}

void intro() {
  print("Welcome to the Adventure Game!");
  Timer(Duration(seconds: 1),
      () => print("You find yourself in a mysterious land..."));
  Timer(Duration(seconds: 2),
      () => print("Your mission is to find the treasure and escape!"));
}

void choosePath() {
  print("\nWhich path will you choose?");
  print("1. Go left");
  print("2. Go right");

  var choice = int.parse(stdin.readLineSync()!);
  if (choice == 1) {
    print("\nYou chose the left path...");
    Timer(
        Duration(seconds: 1), () => print("You encounter a ferocious beast!"));
    Timer(Duration(seconds: 2), () => print("Game Over!"));
  } else if (choice == 2) {
    print("\nYou chose the right path...");
    Timer(Duration(seconds: 1),
        () => print("You find a hidden cave with treasure!"));
    Timer(Duration(seconds: 2), () => print("Congratulations, you win!"));
  }
}
