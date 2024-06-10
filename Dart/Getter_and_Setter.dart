void main() {
  
  var student = Student();
  
  // Default Getter and Setter
  student.name = "A";    // Calling default Setter to set value
  print(student.name);  // Calling default Getter to get value
  
  student.percentage = 437;  // Calling Custom Setter to set value
  print(student.percentage); // Calling Custom Getter to get value
}

class Student{
    
  var name;   // Instance Variable
  
  var percent;
  
  void set percentage(double marksScored){  // Instance variable with Custom Setter
    percent = (marksScored / 500) * 100;
  }
  
  double get percentage{  // Instance variable with Custom Getter
    return percent;
  }
  
  // Private Instance Variable
}

class Singer{
  // Private Instance Variable
  var _percent;
  
  void set percentage(double marksScored) => _percent = (marksScored/500)*100;
  
  double get percentage => _percent;
}