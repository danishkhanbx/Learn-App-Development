/* Difference between final and const:
 * Final variable can only be set once and it is initialized when accessed.
 * Const variable is implicitly final but it is a compile-time constant i.e. it is initialized during compilation. */

void main() {
  
  // const
  const PI = 3.14;
  const double gravity = 9.8;
  
  // final keyword
  final cityName = "Mumbai";
  // cityName = "Lucknow"; // throws error
  final String countryName = 'India';
  
}

/* Instance variable can be final but cannot be const.
 * If you want a Constant at Class level then make it static const. */

class Circle {
  final color = 'Red';
  static const PI = 3.14;
}