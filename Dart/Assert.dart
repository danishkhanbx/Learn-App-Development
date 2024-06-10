void main(){
  
  print('starting');
  int age = 43;
  assert(age == 43);
  print('finished');
  
  print('starting');
  age = 43;
  assert(age == 42);
  print('finished');
}