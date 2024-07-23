int absoluteValue(int? value){
  
  // after null check value is promoted to non-nullable variable
  if(value == null){
    return 0;
  }
  return value.abs();
  
  // OR
  return value?.abs() ?? 0;  // if value is null return 0
}

// cannot use a non-nullable variable before it is assigned an value
int sign(int x) {
  int result; // non-nullable
  print(result.abs()); // invalid: 'result' must be assigned before it can be used
  if (x >= 0) {
    result = 1;
  } else {
    result = -1;
  }
  print(result.abs()); // ok now
  return result;
}

void main(){
  
}
