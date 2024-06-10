void main() {
  
  // 1. condition ? expl : exp2
  // If condition is true, evaluates expr1 (and returns its value);
  // otherwise, evaluates and returns the value of expr2.
  int a = 2;
  int b = 3;
  
  if (a < b) {
    print("$a is smaller");
  } else{
    print("$b is smaller");
  }
  
  a < b ? print("$a is smaller than $b") : print("$b is smaller than $a");
  
  int smallerNumber = a < b ? a : b;
  print("$smallerNumber is smaller");
  
  // 2. expl ?? exp2
  // If expr1 is non-null, returns its value; 
  // otherwise, evaluates and returns the value of expr2.
  String name = "Danish";
  String userName = name ?? "Guest User";
  print(userName);
  
}