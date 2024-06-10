/* In Dart, ARRAY is known as LIST.
* Ordered collection: Elements are ordered in sequence. */

void main() {
  
  // Creates fixed-length list
  var fixedLengthList = List<int>.filled(5, 0);
  print(fixedLengthList);
  fixedLengthList[1] = 45;
  fixedLengthList[2] = 55;
  print(fixedLengthList[2]);
  fixedLengthList[3] = 65;
  print(fixedLengthList);
  
  print("\n");
  
  // Using Index
  for(int i=0; i<fixedLengthList.length; i++){
    print(fixedLengthList[i]);
  }
  
  print("\n");
  
  // Using Individual Element ( Objects )
  for (int element in fixedLengthList){
    print(element);
  }
  
  print("\n");
  
  // Using Lambda
  fixedLengthList.forEach((element) => print(element));
  
  // add(value), remove(index), clear() operations Not supported in fixed-length list
}