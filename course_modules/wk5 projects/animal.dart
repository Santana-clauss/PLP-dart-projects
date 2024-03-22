class Animal {
  String name;
  int age;
  String color;

  Animal(this.name, this.age,this.color);

  
  void displayinfo(){
    print("The animal info:$age:$name:$color:$color");
  }
  void sound() {
    print('The animal makes a sound.');
  }
}

class Dog extends Animal {
  String soundName;

  Dog(String name, int age, String color,this.soundName) : super(name, age,color,);
  void makeSound() {
    print('The dog makes a $soundName');
  }
}


void main() {
  Dog myDog = Dog('Simba', 3,'black',"barking");
  
  myDog.makeSound();

  print('My dog is  ${myDog.soundName} and is ${myDog.age} years old.');

}
