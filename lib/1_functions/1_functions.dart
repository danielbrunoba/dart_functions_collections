void main(){

  final valueCalculated = sumIntegers(10, 10);
  print('A soma de dois inteiros é $valueCalculated');

}

  int sumIntegers(int number1, int number2) {
  print('Executando a soma de inteiros($number1, $number2)');
  return number1 + number2;

}