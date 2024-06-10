/* Мар:
 * It is unordered collection of key-value pair.
 * Key-value can be of any object type:
 * Each KEY in a Map should be unique
 * The VALUE can be repeated
 * Commonly called as hash or dictionary.
 * Size of map is not fixed, it can increase or decrease as per the number of elements.
 * HashMap: Implementation of Map based on hash-table */

void main() {
  
  // Method 1: Using Literals 
  Map<String, int> countryDialingCode = {
    "USA": 1,
    "INDIA": 91,
    "PAKISTAN": 92
  };
  
  // Method 2: Using Constructor
  Map<String, String> fruits = Map();
  fruits["apple"] = 'red';
  fruits["banana"] = 'yellow';
  fruits["guava"] = 'green';
  
  print(fruits);
  print(fruits['apple']);
  print('\n');
  
  for (String key in fruits.keys){         // Print all keys
    print(key);
  }
  print('\n');
  
  for (String value in fruits.values){  // Print all values
    print(value);
  }
  print('\n');
  
  fruits.forEach((key, value) => print("key: $key and value: $value"));  // Using lambda
  
  print('\n');
  print(fruits.containsKey('apple'));  // returns true if the KEY is present in Map
  fruits.update("apple", (value) => "green"); // Update the VALUE for the given KEY
  print(fruits);
  fruits.remove("banana"); // removes KEY and it's VALUE and returns the VALUE
  fruits.isEmpty; // returns true if the Map is empty
  fruits.length; // returns number of elements in Map
//  fruits.clear(); // Deletes all elements
  
}