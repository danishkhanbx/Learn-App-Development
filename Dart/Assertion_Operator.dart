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
  
  String last1 = lastName('Danish Khan')!;
  String? last2 = lastName('Danish Khan');
}
