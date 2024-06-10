/* Set:
 * Unordered collection of unique items.
 * It does not contain duplicate elements
 * You cannot get elements by INDEX, since the items are unordered
 
 * HashSet:
 * Implementation of unordered Set
 * It is based on hash-table based Set implementation */

void main() {
  
  // Method 1: From a List
  Set<String> countries = Set.from(["USA", "India", "China"]);
  countries.add("UK");
  countries.add("Japan");
  
  // Method 2: Using Constructor
  Set<int> numbersSet = Set();
  numbersSet.add(73);
  numbersSet.add(64);
  numbersSet.add(21);
  numbersSet.add(12);
  numbersSet.add(12);           // Duplicate entries are ignored
  print("\n");                 
                              
  numbersSet.contains (73);  // returns true if the element is found in set
  numbersSet.remove(64);   // returns true if the element was found and deleted                    
  numbersSet.isEmpty;    // returns true if the Set is empty
  numbersSet.length;    // returns number of elements in Set
//  numbersSet.clear();  // Deletes all elements
  
  
  // Using Individual Element ( Objects )
  for (int element in numbersSet){
    print(element);
  }
  print("\n");
  
  // Using Lambda
  numbersSet.forEach((element) => print(element));  
  print("\n");
 
  // create an empty set
  var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  names.addAll(halogens);

}