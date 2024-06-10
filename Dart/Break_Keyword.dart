void main() {
  
  // Break
  for(int i=101; i<=110; i++){
    print(i);
    
    if(i == 105){
      break;
    }
  }
  
  for(int i=1; i<=3; i++){
    
    for(int j=1; j<=3; j++){
     print("$i, $j");
     
      if(i==2 && j==2){
        break;
      }
    }
  }
  
  // BREAK statement with Labelled FOR Loop
  outerLoop: for(int i=4; i<=6; i++){
    
    innerLoop: for(int j=4; j<=6; j++){
     print("$i, $j");
     
      if(i==5 && j==5){
        break outerLoop;
      }
    }
  }
  
}