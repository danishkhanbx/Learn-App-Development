/* Abstract Method:
 * To make a method abstract, use semicolon (;) instead of method body
 * Abstract method can only exist with Abstract class
 * You need to override Abstract methods in sub-class

 * Abstract Class:
 * Use abstract keyword to declare Abstract Class
 * Abstract class can have Abstract Methods, Normal Methods and Instance Variables as well.
 * The Abstract Class cannot be instantiated, vou cannot create obiects */

void main(){
  
  //  var shape = Shape();   // Error. Cannot instantiate Abstract Class
  var rectangle = Rectangle();
  rectangle.draw();
  
  var circle = Circle();
  circle.draw();
  
}

// Abstract Class
abstract class Shape{
  
  var x;  // Define your Instance variable if needed
  var y;

  // Abstract Method
  void draw();  
  
  void myNormalFuction(){ 
    //some code
  }
  
}

class Rectangle extends Shape{
  
  void draw(){
    print("Drawing rectangle...");
  }
  
}

class Circle extends Shape{
  
  void draw(){
    print("Drawing circle...");
  }
  
}