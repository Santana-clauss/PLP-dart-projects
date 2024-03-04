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

void main(){
  
  print(addTwo(2, 6));
  print(subtractTwo(5, 2));
  print(multiplyTwo(20, 30));
  print(divideTwo(12, 5));
  print(stringLength("santana"));

}