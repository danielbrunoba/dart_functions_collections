void main() {
  // Parametros Obrigatórios por default
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');

  // Parâmetros Nomeados
  // Parâmetros Nomeados são nullables por default
  // Parâmetros Nomeados podem ser promovidos para non-null como checagem de null
  print('A soma de 10.2 + 10.2 é ${sumDoubles(number1: 10.2, number2: 10.2)}');
  print('A soma de 10.2 + 10.2 é ${sumDoubles(number1: 10.2, number2: 10.2)}');

  sumDoubleRequired(number1: 5.2, number2: 10.2);
  sumDoubleRequired2(number1: null, number2: 10);

  print('Chamada com parâmetros default ${sumDoublesDefault()}');
  print('Chamada com parâmetros default ${sumDoublesDefault(number1: 10)}');

  // Parametro Opcional
  sumIntOptional();
  sumIntOptional(1);
  sumIntOptional(1, 1);

  parametersNormalWithNominated(1, name: 'Daniel', age: 21);
  parametersNormalWithNominated2(1, 'Daniel', 21);
}

int somaInteiros(int number1, int number2) {
  return number1 + number2;
}

double sumDoubles({double? number1, double? number2}) {
  if (number1 != null && number2 != null) {
    return number1 + number2;
  }

  return 0.0;
}

double sumDoubleRequired({required double number1, required double number2}) {
  return number1 + number2;
}

double sumDoubleRequired2({required double? number1, required double number2}) {
  number1 ??= 0;

  return number1 + number2;
}

double sumDoublesDefault({double number1 = 0, double number2 = 0}) {
  return number1 + number2;
}

int sumIntOptional([int number1 = 0, int number2 = 0]) {
  return number1 + number2;
}

void parametersNormalWithNominated(int number,
    {required String name, required int age}) {}
void parametersNormalWithNominated2(int number, [String? name, int? age]) {}
void parametersNormalWithNominated3(int number1, int? number2,
    [String? name, int? age]) {}
