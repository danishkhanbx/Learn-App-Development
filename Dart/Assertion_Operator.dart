// nullable return type
String? lastName(String fullName){
  final components = fullName.split(' ');
  return components.length > 1 ? components.last : null;
}

void main() {
  int? age = 36;
  print(age!);  // good to do
  int? height = null;
  print(height!); // bad practice

  int? maybeValue = 42;
  int value = maybeValue!; // valid, value is non-nullable
  // By doing this, we're telling Dart that maybeValue is not null, and it's safe to assign it to a non-nullable variable.
  
  String last1 = lastName('Danish Khan')!;
  String? last2 = lastName('Danish Khan');
}
