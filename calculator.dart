
import 'dart:io';

void main(){
  print('This is a simple calculator');

  print("Enter the first number");
  double num1=double.parse(stdin.readLineSync()!);

  print("Enter the your second  number");
  double num2=double.parse(stdin.readLineSync()!);

  print("Choose your operation");

  print("1.Addition");
  print("2.Subtraction");
  print("3.Multiplication");
  print("4.Division");

  int choice=int.parse(stdin.readLineSync()!);

  switch(choice){
    case 1:
      print(num1+num2);
      break;
    case 2:
      print(num1-num2);
      break;
    case 3:
      print(num1*num2);
      break;
    case 4:
    if(num2!=0)
    {
      print(num1/num2);
    }else{
      print("You can't divide by zero");
    }
      break;
    default:
      print("Invalid choice");
      break;
  }

}
