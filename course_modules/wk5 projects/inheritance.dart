
class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void displaydetails() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

class Student extends Person {
  String grade;
  String school;

  Student(String name, int age, this.grade, this.school) : super(name, age);

  void displaydetails() {
    super.displaydetails(); 
    print('I am a student at $school.');
  }
}

void main() {
  
  Student student1= Student('John Doe', 16, '10th', "PLP academy");
  student1.displaydetails();
}
