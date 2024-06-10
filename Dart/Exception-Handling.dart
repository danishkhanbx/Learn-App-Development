void main() {
  
  int a = 12 ~/ 5;
  print("The result is $a");
  
  // ON Clause: Use when you know the exception to be thrown
/* try{
    int b = 12 ~/ 0;
    print("The result is $b");
  } on IntegerDivisionByZeroException{
    print("Cannot divide by zero");
  } */

  // Catch Clause with Exception Object: Use when you do not know the exception
  try{
    int c = 12 ~/ 0;
    print("The result is $c");
  } catch (e){
    print("The exception thrown is $e");
  }
  
  // Catch Clause with Exception Object and StackTrace Object: Using STACK TRACE to know the events occurred before Exception was thrown
  try{
    int d = 12 ~/ 0;
    print("The result is $d");
  } catch (e, s){
    print("The exception thrown is $e");
    print(" STACK TRACE \n $s");
  }
  
  // Finally Clause: Whether there is an Exception or not, FINALLY Clause is always Executed
  try{
    int f = 12 ~/ 0;
    print("The result is $f");
  } catch (e){
    print("The exception thrown is $e");
  }finally{
    print("This is FINALLY Clause and is always executed.");
  }
  
}