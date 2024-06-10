/* Static Keyword:
 * Static Variables are also known as Class Variables
 * Static Methods are also known as Class Methods

 ** Static variables are lazily initialized 
 * i.e. they are not initialized until they are used in program
 * So they consume memory only when they are used

 ** Static methods has nothing to do with class object or instance
 * You cannot use 'this' keyword within a Static Method

 ** From a Static Method:
 * You can ONLY access Static Method and Static Variables
 * But you cannot access Normal Instance Variables and methods of the class */
void main() {
  
  print(Circle.pi);
  
  Circle.pi;   // 4 bytes
  Circle.pi;  // No more memory will be allocated
  
  // Circle.pi = 6.14;
  print(Circle.pi);
  
  // var circle1 = Circle();
  // circle1.pi;  // 4 bytes per reference
  
  Circle.calArea();
}

class Circle {
  
  static const double pi = 3.14;
  static int maxRadius = 5;
  
  var color;
  
  static void calArea(){
    print("Area of the Circle");
    // myNormalFunction();  // Not allowed to call instance functions
    // this.color; // You cannot use 'this' keyword and even cannot access Instance variables
  }
  
  void myNormalFunction(){
    Circle.calArea();
    this.color = "Red";
    print(pi);
    print(maxRadius);
  }
}