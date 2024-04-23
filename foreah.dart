void main(){
 List<int> numbers = [1, 2, 3, 4, 5];
 var total=0;
 numbers.forEach((num) {
   total += num;
  });
  print(total);
  double average = total / (numbers.length);
  print(average);

  for (int i = 0; i <=5; i++){
    total+=i;
    
  }
  print(total);
}