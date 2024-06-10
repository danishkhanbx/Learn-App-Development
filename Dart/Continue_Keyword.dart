void main(){
  
  // Continue
  for(int i=1; i<=10; i++){
    
    if(i==2 || i==4 || i==6 || i==8 || i==10){
      continue;
    }
    
    print(i);
  }
  
  for(int i=1; i<=3; i++){
    for(int j=1; j<=3; j++){
      
      if(i==2 && j==1){
        continue;
      }
      
      print("$i, $j");
    }
  }
  
  // CONTINUE statement with Labelled FOR Loop
  outerLoop: for(int i=1; i<=3; i++){
    innerLoop: for(int j=1; j<=3; j++){
      
      if(i==2 && j==1){
        continue outerLoop;
      }
      
      print("$i, $j");
    }
  }
  
}