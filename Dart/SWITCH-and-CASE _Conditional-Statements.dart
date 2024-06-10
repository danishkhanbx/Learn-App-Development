/* The variable used in switch case can be:
 * Integer [ int ]
 * String [ String ] */

void main() {
    
  String grade = 'F';
  
  switch(grade){
      
    case 'A':
      print('Excellent');
      break;
    
    case 'B':
      print(' Very Good');
      break;
      
    case 'C':
      print('Good');
      break;
      
    case 'D':
      print('OK');
      break;
    
    case 'E':
      print('Work Hard');
      break;
      
    case 'F':
      print("You have Failed");
      break;
      
    default:
      print("Invalid Grade");
      
  }
  
}