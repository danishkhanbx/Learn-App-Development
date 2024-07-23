// nullable function argument
void openSocket(int? port){
  // port can be null
}

// nullable return type
String? lastName(String fullName){
  final components = fullName.split(' ');
  return components.length > 1 ? components.last : null;
}

// using parameters
T? firstNonNull<T>(List<T?> items){
  // returns first non null element in list if any
  return items.firstWhere( (item) => item != null);
} 

void main() {
  String? name;  // initialized to null by default
  int? age = 36;  // initialized to non-null
  age = null; // can be re-assigned to null
  print(lastName('Danish'));
  print(lastName('Danish Khan'));
}





