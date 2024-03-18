import 'dart:ffi';

class Student{
  String name;
  String admission;
  int year_study;
  bool graduated_Plp;

  Student(this.name,this.admission,this.year_study,this.graduated_Plp);
  void display(){
    print('Name :$name');
    print('Admission:$admission');
    print('Year of study:$year_study');
    print("Already graduated PLP?:$graduated_Plp");

  }
}

void main(){
  var  s1 = new Student("John Doe","2017A7PS065",3,false);
  s1.display();
  
}