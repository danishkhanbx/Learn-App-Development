/* Callable Class:
 * When Dart class is called like a function
 * Implement call() function */
void main(){
  var personOne = Person();
  var msg = personOne(21, "Danish");
  print(msg);
}

class Person{
  String call(int age, String name){
    return "The name of the person is $name and age is $age";
  }
}