void main(){
  // const color = 'Vermelho';
 var color = Colors.red;
 if(color == Colors.red); {

 }

 // Transformando a string blue em um enum Colors.blue
 // Antes da versão 2.15
  var blue = 'blue';
  var blueColor = Colors.values.where((color) => color.toString() == 'Colors.$blue');

 // Versão 2.15
 print(Colors.blue.name);
 var blueColor123 = Colors.values.byName(blue);
 print(blueColor123);

 var mapColors = Colors.values.asMap();
 print(mapColors);

 var mapColorsName = Colors.values.asNameMap();
 print(mapColorsName);

 var blueColorForMap = mapColorsName [blue];
 print(blueColorForMap);

 var whiteColor = mapColorsName['white'];
 print(whiteColor);
}

enum Colors {
  blue, red, orange, green, black,
}