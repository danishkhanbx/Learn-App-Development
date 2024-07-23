class Path{
  // empty methods
  void moveTo(int x, int y){}
  void lineTo(int x, int y){}
}

void main(){
  
  Path? path;
  
  path
    ?..moveTo(0, 0)
    ..lineTo(0, 2)
    ..lineTo(2, 2)
    ..lineTo(2, 0)
    ..lineTo(0, 0);
    
}
