import 'dart:io';

void add(num1,num2){
  int sum=num1+num2;
  print ("the sum is $sum");

}
String? printName(){
  print("enter your name");
  String? name = stdin.readLineSync()!;
  print("enter age");
  int? age = int.parse(stdin.readLineSync()!);
  return('Iam $name  and I am $age years old');
  
}


void main(){
  add(4,9);
  print(printName());

}