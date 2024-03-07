import 'dart:io';
void myFunc(){
  var list1=[2,8,9,10];
  for (var i in list1) {
    print("Element $i");
    
  }
}

void myFunc2(){
  String? username;
  String? password;
  while (username == null || password == null) 
  {
    stdout.write("Enter your username: ");
    username = stdin.readLineSync();
    stdout.write("Enter your password: ");
    password = stdin.readLineSync();
    if(username==null&&password==null)
    {
      print("Please enter your username and password");
    }
   
  }
 print("Hello $username you can proceed to login ");
}

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
  myFunc2();
  myFunc();
}
