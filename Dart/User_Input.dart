import 'dart:io';

main(List<String> arguments){
  stdout.write("what is you name?\r\n");
  String name = stdin.readLineSync();
  
  name.isEmpty ? stderr.write("Name is empty") : stdout.write("Hello $name \r\n");
}