void main () {
  
  printCities("Delhi", "Mumbai", "Pune");
  print("");
  printCountries("India", "USA");
}

// Required Parameters: all the parameters must be passed else throws an error
void printCities(String name1, String name2, String name3){
  print ( "Name 1 is $name1");
  print ( "Name 2 is $name2");
  print ("Name 3 is $name3");
}

// Optional Positional Parameters
void printCountries(String name1, [String name2, String name3]){
  print ( "Name 1 is $name1");
  print ( "Name 2 is $name2");
  print ("Name 3 is $name3");
}