// Rule: Non-nullable variables must always be initialized with non-null values.

void printAbs({required int value}) {  // 'value' can't have a value of null because of its type, and no non-null default value is provided
  print(value.abs());
}

class Host {
  Host({required this.hostName}); // 'hostName' can't have a value of null because of its type, and no non-null default value is provided
  final String hostName;
}

void main(){
  printAbs(); // The named parameter 'value' is required, but there's no corresponding argument
  printAbs(value: null); // The argument type 'Null' can't be assigned to the parameter type 'int'
  printAbs(value: -5); // ok
  
  final host1 = Host();
  final host2 = Host(hostName: null);
  final host3 = Host(hostName: 'example.com');
}
