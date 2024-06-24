// All functions declared below runs on Main Ul thread.
import 'dart:async';

main(){
  print('\n Main program: Starts \n');
  printFileContent();
  print('\n Main program: Ends \n');
}

printFileContent() async {
  String fileContent = await downLoadAFile();
  print('\n The content of the file is --> $fileContent \n');
}


// To download a file [ Dummy long running operation ]
Future<String> downLoadAFile(){
  Future<String> result = Future.delayed(Duration(seconds: 6), () {
    return 'My secret file content';
  });
  return result;
}