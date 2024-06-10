import 'dart:collection';

void main() {
  // Ordered, No index, Add at the end and remove from the start
  
  Queue items = new Queue();
  
  items.add(1);
  items.add(2);
  items.add(3);
  print(items);
  
  items.add(4);
  print(items);
  
  items.removeFirst();
  print(items);
  
  items.removeLast();
  print(items);
}
