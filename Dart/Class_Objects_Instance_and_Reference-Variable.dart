void main() {
  
  var student1 = Student();  // One Object, student1 is reference variable
  student1.id = 1;
  student1.name = "Peet";
  print("Student ID is ${student1.id} and Name is ${student1.name}");
  student1.study();
  student1.sleep();
  
  var student2 = Student();
  student2.id = 2;
  student2.name = "Jeet";
  print("Student ID is ${student2.id} and Name is ${student2.name}");
  student2.study();
  student2.sleep();

}

// Define states (properties) and behavior of a Student
class Student{
  int id = 0;         // Instance or Field Variable, default value is 0
  String name = "";  // Instance or Field Variable, default value is ""
  
  void study(){
    print("${this.name} is studying");
  }
  
  void sleep(){
    print("${this.name} is now sleeping");
  }
}