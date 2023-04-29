void main() {
  var list = ['Daniel'];
  print(list.hashCode);
  print(list);
  function(list);
  print(list);

  var name = 'Daniel Bruno';
  print(name);
  function2(name);
  print(name);
  print(name.hashCode);

  var list2 = ['Daniel'];
  print(list2);
  add(list2);
  print(list2);

  var productsList = ['Products'];
  calculateCart(productsList);

}

void calculateCart(List<String> products){}

    void function2(String name) {
      name += ' Estudante Flutter';
    }

    void function(List<String> names) {
      print(names.hashCode);
      if (names.isNotEmpty) {
        names.clear();
      }
    }

List<String> add(List<String> names) {
  var newNames = [...names];
  newNames.add('Daniel Bruno');
  return newNames;
}