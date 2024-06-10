/* Lambda Expression
 * A function without a name. 
 * Also known as anonymous function or lambda
 * NOTE: A Function in Dart is an object. Also int, String are objects */

void main() {
  
  // Lambda Functions: 1st way
  Function addTwoNumbers = (int a, int b) {
    var sum = a + b;
    print(sum);
  };
  
  var multiplyByFour = (int num){
    return num*4;
  };
  
  addTwoNumbers(2, 3);
  print(multiplyByFour(2));
  
  // 2nd way: Function Expression: Using Short Hand Syntax or FAT Arrow
  Function addNumbers = (int a, int b) => print(a + b);
  
  var multiplyNumber = (int num) => num*4;
  
  addNumbers(2, 3);
  print(multiplyNumber(2));
  
}

// Normal function
void addMyNumbers (int a, int b) {
  var sum = a + b;
  print(sum);
}