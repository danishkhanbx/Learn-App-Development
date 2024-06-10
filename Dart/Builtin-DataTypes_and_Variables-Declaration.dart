void main() {
  
  // Numbers: int
  int score = 10;
  print(score);

  var count = 23; // it is inferred as integer automatically by compiler
  print(count);

  int hexValue = 0xEADFDEBE;
  print(hexValue);

  // Numbers: double
  double percentage = 90.52;
  print(percentage);

  var percent = 89.99;
  print(percent);

  double exponent = 1.52e3;
  print(exponent);

  // String
  String name = "Danish";
  print(name);

  var last = "Khan";
  print(last);

  // Boolean
  bool isValid = true;
  print(isValid);

  var isAlive = false;
  print(isAlive);
  

  /* Note: 
   * All data types in dart are objects. 
   * Therefore, thier initial value is 'null' by default. */
  
  var middle;
  print(middle);
  
  // String family;
  // print(family);
  
}