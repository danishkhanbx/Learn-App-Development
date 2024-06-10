/* By default, a constructor in a subclass calls the superclass's no-argument constructor.
 * Parent class constructor is always called before child class constructor.
 * If default constructor is missing in Parent class, then you must manually call one of the constructors in super class. */

void main(){
  
  var dog1 = Dog("Labrador", "Black");
  print("");
  var dog2 = Dog("Pug", "Brown");
  print("");
  var dog3 = Dog.myNamedConstructor("German Shepard", "White");
  
}

class Animal{
  var color;
  
  Animal(String color) {
    this.color = color;
    print("Animal class Constructor");
  }
  
  Animal.myAnimalNamedConstructor(String color){
    print("Animal class named constructor");
  }
}

class Dog extends Animal{
  
  var breed;
  
  // Inheritance with Default Constructor and Parameterised Constructor
  Dog(String breed, String color) : super(color){
    this.breed = breed;
    print("Dog class constructor");
  }
  
  // Inheritance with Named Constructor
  Dog.myNamedConstructor(String breed, String color) : super.myAnimalNamedConstructor(color){
    print("Dog class Named constructor");
  }
  
}