// All functions declared below runs on Main Ul thread.
import 'dart:async';

main(){
  print('\nMain program: Starts \n');
  printFileContent();
  print('\nMain program: Ends \n');
}

printFileContent()  {
  Future<String> fileContent = downLoadAFile();
  fileContent.then( (resultString) {
    print('\nThe content of the file is --> $resultString \n');
  });
  
}


// To download a file [ Dummy long running operation ]
Future<String> downLoadAFile(){
  Future<String> result = Future.delayed(Duration(seconds: 6), () {
    return 'My secret file content';
  });
  return result;
}