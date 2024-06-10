void main() {
  
  // Create Growable List: Method 1
  var growableList = <int>[];
  print(growableList);
  
  growableList.add(5);
  growableList.add(15);
  growableList.add(25);
  growableList.add(35);
  print(growableList);
  
  growableList[0] = 4;
  print(growableList);
  
  growableList.remove(25);
  print(growableList);
  
  growableList.add(9);
  growableList.removeAt(1);
  print(growableList);
  
  // Create Growable List: Method 2
  var countriesList = <String>['A', 'B'];
  countriesList.add("C");
  countriesList.add("D");
    
}