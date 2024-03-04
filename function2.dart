import 'functions.dart';

int addTwo(int a,int b){
     return a+b;

}
int subtractTwo(int a, int b) {
  return a - b;
}
int multiplyTwo(int a, int b) {
  return a * b;
}
double divideTwo(int a, int b) {
  return a/b;
}
int stringLength(String a) {
   
   return a.length;
}

String getFirstElement(){
  List<String>names=["santana","mercy","faith"];
  return names[0];
}

void main(){
  
  print(addTwo(2, 6));
  print(subtractTwo(5, 2));
  print(multiplyTwo(20, 30));
  print(divideTwo(12, 5));
  print(stringLength("santana"));
  print(getFirstElement());

}