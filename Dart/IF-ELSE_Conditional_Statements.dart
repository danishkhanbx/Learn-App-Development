void main(){
  
  // IF and ELSE Statements
  var salary = 5000;
  if (salary > 25000){
    print("You got promtion, Congrats!");
  } else{
    print("You need to work hard");
  }
  
  // IF ELSE IF Ladder statements
  var marks = 60;
  
  if(marks >= 90 && marks <=100){
    print("Grade A+");
  }else if(marks >= 80 && marks < 90){
    print("Grade A");
  }else if(marks >= 70 && marks < 80){
    print("Grade B");
  }else if(marks >= 60 && marks < 70){
    print("Grade C");
  }else if(marks >= 50 && marks < 60){
    print("Grade D");
  }else if(marks >= 40 && marks < 50){
    print("Grade E");
  }else if(marks >= 0 && marks < 40){
    print("Grade F");
  }else{
    print("Invalid Marks. Try Again");
  }
  
}