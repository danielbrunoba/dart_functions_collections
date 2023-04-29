void main() {
  // Arrow Functions - OK
  // Anonymous Functions - OK
  // typedef - OK

  var name = '';
  var age = 1;
  var anyFunction = () {
    print('Variable function call');
    return '2k';
  };

  print(anyFunction());
 // Não está chamando a função
  print(sumIntegers(10, 10));

  print('Starting call');
  callAFunctionOfOneParameter1((name) {
    if (name.isEmpty) {
      print('Name came empty');
    } else {
      print(name);
    }
  });
  print('Ending call');

  funx2((name, fullName, {aa, x1, x2}) => 'null');
}

// 3 Partes:
// 1. Tipo de retorno
// 2. Nomes
// 3. Parâmetros (normal, nomeado e opcional)
int sumIntegers(int number1, int number2) => number1 + number2;

void sumIntegersVoid(int number1, int number2) => number1 + number2;

void callAFunctionOfOneParameter1(FunctionThatReceivesName functionThatReceivesName) {
  var calculation = 1 + 1;
  var fullName = 'Daniel';
  print('Ending the function callUmaFunctionOfOneParameter');
  print('Invoking functionThatReceivesName');
}

void funx2(FunctionThatReceivesComplexName name) {}

void callAFunctionOfOneParameter2(FunctionThatReceivesName functionThatReceivesTheName) {
  var calculation = 1 + 1;
  var fullName = 'Daniel';
  print('Ending the function callUmaFunctionOfOneParameter');
  print('Invoking functionThatReceivesName');
}

typedef FunctionThatReceivesName = void Function(String name);
typedef FunctionThatReceivesComplexName = String Function(
  String name,
  String fullName, {
  required String? x1,
  required String? x2,
  int? aa,
});
