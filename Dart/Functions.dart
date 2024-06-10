/* Functions in Dart are Objects.
 * Functions can be assigned to a variable or passed as parameter to other functions.
 * All functions in Dart returns a value.
 * If no return value is specified the function return null.
 * Specifying return type is optional but is recommended as per code convention. */

void main() {
  
  // 2. Pass parameters to a Function
  findPerimeter(4, 2);

	int rectArea = getArea(10, 5);
	print("The area is $rectArea");
  
  print("The summ is ${getSum(1, 2)}");
}

// 1. Define a Function
void findPerimeter(int l, int b){
  int perimeter = 2 * (l + b);
	print("The perimeter is $perimeter");
}

int getArea(int l, int b){
  // 3. Return value from a Function
  int area = l * b;
	return area;
}

// 4. Test that by default a Function returns null
int getSum(int a, int b){
}