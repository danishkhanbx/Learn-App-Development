/* Inheritance is a mechanism in which one object acquires properties of its parent class object.
 * Super class of any class is Object.
 * Provides default implementation of:
 * toString(), returns the String representation of the object
 * hashCode Getter, returns the Hash Code of an object
 * operator ==, to compare two objects
 * Advantages:
 * Code reusability
 * Method Overriding
 * Cleaner code: no repetition */

void main(){
  var dog = Dog();
  dog.breed = "Labrador";
  dog.color = "Black";
  dog.bark();
  dog.eat();
  
  var cat = Cat();
  cat.age = 2;
  dog.color = "Orange";
  cat.meow();
  cat.eat();
  
  var animal = Animal();
  animal.color = "white";
  animal.eat();
}

class Animal{
  var color;
  
  void eat() {
    print("Eat !");
  }
}

class Dog extends Animal{
  
  var breed;
  
  void bark(){
    print("Bark !");
  }
  
}

class Cat extends Animal {
  var age;
  
  void meow(){
    print("Meow !");
  }
  
}
