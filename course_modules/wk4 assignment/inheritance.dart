//inheritance
class Animal{
  
final String name;
final String sound;

Animal(this.name, this.sound);
void makeSound(){
  print("$name says $sound");
}
}

class Dog extends Animal{
  Dog(String name, String sound): super(name, sound);
  void makeSound(){
      print("$name says $sound");
    }
}
class   Cat extends Animal{
  Cat(String name, String sound): super(name, sound);
  void playWithBall() {
    print("The Cat is playing with the ball");
}
}

void main() {
  Dog dog = new Dog("Dog", "Woof");
  dog.makeSound();
  Cat cat = new Cat("Cat", "Meow");
  cat.makeSound();
  cat.playWithBall();
}