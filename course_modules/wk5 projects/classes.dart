class Student {
  String _name; 
  int _age;
  Student(this._name, this._age);

  
  String get name => _name;
  int get age => _age;

  
  set name(String newName) {
    _name = newName;
  }

  set age(int newAge) {
    _age = newAge;
  }

  
  void greet() {
    print('Hello, my name is $_name and I am $_age years old.');
  }
}

void main() {
 
  Student student = Student('Santana Jepchumba', 30);

  
  print(student.name); 
  print(student.age);
 
  student.name = 'Santana Jepchumba';
  student.age = 25;
  student.greet(); 

  
  print(student._name); 
}
