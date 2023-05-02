void main() {
  var age = '21 years';
  int.parse(age);

  try {
    var parseAge = int.parse(age);
    //name!.toLowerCase();

    if (parseAge == 21) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    //print(e);
    print(s);
    //print('Erro ao converter idade');
  } on TypeError {
    print('Erro ao cobverter idade');
  } on Exception {
    print('Erro idade == 21');
  } catch (e) {
    print('Erro ao executar programa');
  } finally {
    print('finally');
  }
}
