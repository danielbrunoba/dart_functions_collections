void main() {
  var numbers = List.generate(10, (index) => index);
  numbers.forEach(print);

  // Expand
  // Array BiDimencional
  var list = [
    [1, 2],
    [3, 4],
  ];

  var newList = list.expand((numbers) => numbers).toList();
  print(newList);

  // any
  final searchList = ['Daniel', 'Cesar', 'Guilherme'];

  if (searchList.any((name) => name == 'Guilherme')) {
    print('Guilherme');
  } else {
    print('Não tem Guilherme');
  }

  // every
  print('.every');
  final searchList2 = ['Daniel', 'Cesar', 'Guilherme'];
  if (searchList2.every((name) => name.contains('e'))) {
    print('Todos os nomes contém a letra e');
  } else {
    print('Nem todos os nomes contém a letra e');
  }

  // .sort
  print('.sort');
  var listForOrdering = [99, 22, 10, 9, 0, 770, 1, 2, 3, 100, 300];
  listForOrdering.sort();
  print(listForOrdering);

  var listNamesOrdering = ['Daniel', 'Cesar', 'André', 'Thiago', 'Guilherme'];
  listNamesOrdering.sort();
  print(listNamesOrdering);

  var listClients = [
    'Daniel | 21',
    'Lavinea | 21',
    'Cesar | 29',
    'Miguel | 11',
    'Nildemar | 43',
  ];

  listClients.sort((client1, client2) {
    final customerData1 = client1.split('|');
    final customerData2 = client2.split('|');

    final ageCustomer1 = int.parse(customerData1[1]);
    final ageCustomer2 = int.parse(customerData2[1]);

    if (ageCustomer1 > ageCustomer2) {
      return 1;
    } else if (ageCustomer1 == ageCustomer2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listClients);

  // CompareTo
  print('.sort com CompareTo');
  var listClients2 = [
    'Daniel | 21',
    'Lavinea | 21',
    'Cesar | 29',
    'Miguel | 11',
    'Nildemar | 43',
  ];

  listClients2.sort((cliente1, cliente2) {
    final customerData1 = cliente1.split('|');
    final customerData2 = cliente2.split('|');

    final ageCustomer1 = int.parse(customerData1[1]);
    final ageCustomer2 = int.parse(customerData2[1]);

    return ageCustomer1.compareTo(ageCustomer2);
  });
  print(listClients2);

  // Clientes por função
  print('.sort com CompareTo');
  var listClients3 = [
    'Daniel | 21',
    'Lavinea | 21',
    'Cesar | 29',
    'Miguel | 11',
    'Nildemar | 43',
  ];
  print('Antes');
  print(listClients3);
  funcaoQualquer(listClients3);
  print('Depois');
  funcaoQualquer(listClients3);

  void printADF(int valor) {
    print(valor);
  }
}

void funcaoQualquer(List<String> clientes) {
  clientes.sort((cliente1, cliente2) {
    final clienteDados1 = cliente1.split('|');
    final clienteDados2 = cliente2.split('|');

    final idadeCliente1 = int.parse(clienteDados1[1]);
    final idadeCliente2 = int.parse(clienteDados2[1]);

    return idadeCliente1.compareTo(idadeCliente2);
  });
}
