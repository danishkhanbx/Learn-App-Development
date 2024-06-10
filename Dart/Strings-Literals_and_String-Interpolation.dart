void main (){
  
  // Literals
  true;
  23;
  "Danish Khan";
  9.5;
  
  // Various ways to define String Literals in Dart
  String s1 = 'Single';
  String s2 = "Double";
  String s3 = 'It\'s easy';
  String s4 = "It's easy";
  String s5 = 'This is going to be a very long String.' 
              'This is just a sample String demo in Dart Programming Language';
  
  // String Interpolation: Use ["My name is $name"] instead of ["My name is " + name]
  String name = "Danish";
  
  String message1 = "My name is " + name;
  print(message1);
  
  String message2 = "My name is $name";
  print(message2);
  
  print ("The number of characters in String Danish is " + name.length.toString());
  print ("The number of characters in String Danish is ${name.length}");
  
  int a = 2;
  int b = 3;
  print("Sum of a and b is ${a + b}");
  print("Sum of $a and $b is ${a + b}");
  
}