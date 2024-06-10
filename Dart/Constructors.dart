/* Properties of Constructors:
 * Used to create Objects.
 * You can initialize your instance or field variables within Constructors.
 * You cannot have both default and parameterized Constructors at the same time.
 * You can have as many Named Constructor as you want to. */

void main() {
  
  var student1 = Student();  
  student1.id = 1;
  student1.name = "Peet";
  print("ID: ${student1.id} and Name: ${student1.name} \n");
  
  var singer1 = Singer(2, "Ram");
  print("Singer ID is ${singer1.id} and Name is ${singer1.name} \n");
  
  var student3 = Student.myCustomConstructor();  
  student3.id = 3;
  student3.name = "Kant";
  print("ID: ${student3.id} and Name: ${student3.name} \n");
  
  var student4 = Student.myAnotherCustomConstructor(4, "Hegel");  
  print("ID: ${student4.id} and Name: ${student4.name} \n");

}

class Student{
  int id = 0;         
  String name = ""; 
  
  // Default Constructor
  Student(){
    print("This is my Default Constructor");
  }
  
  // Named Constructor
  Student.myCustomConstructor(){
    print("This is my custom constructor");
  }
  Student.myAnotherCustomConstructor(this.id, this.name);
  
}

class Singer{
  int id = 0;
  String name = "";
  
  // Parameterized Constructor
/* Singer(int id, String name){
    this.id = id;
    this.name = name;
  } */
  // OR in this form
  Singer(this.id, this.name);
}