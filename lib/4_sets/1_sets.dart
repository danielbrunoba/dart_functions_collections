void main(){
  var listNumbers = <int?>[];
  listNumbers.add(1);
  listNumbers.add(2);
  listNumbers.add(3);
  listNumbers.add(3);
  listNumbers.add(null);
  listNumbers.add(1);
  print(listNumbers);

  var setNumbers = <int?>{};
  setNumbers.add(1);
  setNumbers.add(2);
  setNumbers.add(3);
  setNumbers.add(null);
  setNumbers.add(2);
  setNumbers.add(1);
  print(setNumbers);

  print('.toSet');
  print(listNumbers.toSet());

  setNumbers.forEach(print);

  var numbers1 = {1, 2, 3, 4, 5, 6};
  var numbers2 = {1, 3, 4, 7};

  print('.difference()');
  print(numbers1.difference(numbers2));
  print(numbers2.difference(numbers1));

  print('.union');
  print(numbers1.union(numbers2));

  print('.intersection');
  print(numbers1.intersection(numbers2));

  var names1 = {'Daniel', 'Lala', 'Cesar'};
  var names2 = {'Rodrigo', 'Daniel', 'Cesar'};
  print(names1.intersection(names2));

  print('.lookup');
  print(numbers1.lookup(5));
  print(names1.lookup('Daniel'));


}