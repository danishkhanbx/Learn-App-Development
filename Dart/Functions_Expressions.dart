// Dart Short Hand Syntax: FAT ARROW, Functions Expressions.
void main() {
  
  findPerimeter(4, 5);
  
  print("The area is ${getArea(3, 3)}");
}

void findPerimeter(int l, int b) => print("The perimeter is ${2 * (l+b) }");

// no need for return when using Fat Arrow
int getArea(int l, int b) => l*b;