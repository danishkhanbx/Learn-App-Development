/* Dart does not have any special syntax to declare INTERFACE
 * An INTERFACE in dart is a Normal Class
 * An INTERFACE is used when you need concrete implementation of all of its functions within it's sub class
 * It is mandatory to override all methods in the implementing class
 * You can implement multiple classes but You cannot extend multiole classes durina Inheritance */
void main() {
  
  var tv = Television();
  tv.volumeUp();
  tv.voluomeDown();
}

class Remote{
  
  void volumeUp() {
    print("___Volume Up from Remote___");
  }
  
  void voluomeDown(){
    print("___Volume Down from Remote___");
  }
}

class AnotherClass {
  void justAnotherMethod(){}
}

// Here Remote acts as Interface
class Television implements Remote, AnotherClass {
  
  void volumeUp() {
    print("___Volume Up in Television___");
  }
  
  void voluomeDown(){
    print("___Volume Down in Television___");
  }
  
  void justAnotherMethod(){}
  
}