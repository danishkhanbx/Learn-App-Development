// Method Overriding is a mechanism by which the child class redefines a method in its parent class.

void main(){
  
  var dog = Dog();
  dog.eat();
  dog.speak();
  print(dog.color);
  
}

class Animal{
  var color = 'brown';
  
  void eat() {
    print("Animal is eating !");
  }
  
  void speak(){
    print("Animal Voices !");
  }
  
}

class Dog extends Animal{
  
  var color = 'black';
  
  // Method Overriding
  void eat(){
    print("Dog is eating !");
  }
  
   void speak(){
     super.speak();  // call the speak method of super class
     print("Bark !");
     super.speak();
  }
  
}

