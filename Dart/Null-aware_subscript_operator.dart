// checking if a collection is null
int? first(List<int>? items) {
  return items != null ? items[0] : null; // null check to prevent runtime null errors
}

int? second(List<int>? items){
  return items?[0];
}

void main(){
 
}
