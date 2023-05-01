void main() {
  // Mapa é uma representação de Chave:Valor
  final patient = <String, String>{
    'name': 'Daniel',
    'faculty': 'Software Engineering',
  };

  // O mapa pode ser nulo
  // Mas a chave e o valor não podem ser nulos
  Map<String, String>? patientNullSafety = null;

  // O mapa e o valor não podem ser nulos
  // Mas a chave pode ser nula
  Map<String?, String> patientNullSafety2 = {
    null: 'Daniel',
  };

  // O mapa e a chave não podem ser nulos
  // Mas o valor pode ser nulo
  Map<String, String?> patientNullSafety3 = {
    'name': null,
  };

  var products = <String, String>{};
  // Só será adicionado se a chave não existir
  products.putIfAbsent('name', () => 'Cerveja');
  products.putIfAbsent('name', () => 'Energético');
  print(products);

  products.update('name', (value) => 'Value');
  print(products);
  products.update('price', (value) => '10', ifAbsent: () => '10');

  // Recuperando o valor
  print('Product ${products['name']}');
  print('Price ${products['price']}');

  products.forEach((key, value) {
    print('Key $key: $value');
  });

  // Utilize quando quiser fazer algum processo asyncrono dentro dele
  for (var entry in products.entries) {
    print('Key ${entry.key}: ${entry.value}');
  }

  for (var key in products.keys) {
    print('Key: $key');
  }

  for (var value in products.values) {
    print('Values: $value');
  }

  var newProductsMap = products.map((key, value) {
    return MapEntry(key + '_new', value.toUpperCase());
  });
  print(newProductsMap);

  var map = <String, Object>{
    'name': 'Rodrigo Rahman',
    'faculty': [
      {
        'name': 'Software Engineering',
        'description': 'Software Engineering',
      },
      {
        'name': 'Software Developer',
        'description': 'Software Engineering',
      }
    ]
  };
}
