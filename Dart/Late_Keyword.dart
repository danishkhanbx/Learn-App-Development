/* Late Keyword:
 * Use the late keyword to initialize a variable when it is first read, rather than when it's created.
 * It's common to use late in combination with final, to defer the creation of read-only variables to when they are first read. 
 * By declaring a non-nullable late variable, we promise that it will be non-null at runtime, and Dart helps us with some compile-time guarantees.
 */

class ExampleState extends State {
  // late - will be initialized when first used (in the build method)
  late final textEditingController = TextEditingController();
}

void foo() {
  late final int x;

  x = 5; // ok
  x = 6; // The late final local variable is already definitely initialized
}

class X {
  late final int a;
  
  void set1() => a = 1;
  
  void set2() => a = 2;
}

void main() {
  X x = X();
  x.set1();
  print(x.a);
  x.set2(); // LateInitializationError: Field 'x' has already been initialized.
  print(x.a);
}
