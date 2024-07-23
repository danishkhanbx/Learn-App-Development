// All global variables must now be initialized when they are declared unless they are late
int global1 = 42; // ok

int global2; // The non-nullable variable 'global2' must be initialized

late int global3; // ok

// Same applies for static
class Constants {
  static int x = 10; // ok
  static int y; // The non-nullable variable 'y' must be initialized
  static late int z; // ok
}

void main() {
  
}
