import 'sum/sum.dart' as sum;
import 'new_sum/sum.dart' as new_sum;

void main() {
  var totalDoubles = sum.sumDoubles(10.1, 5.1);
  var totalIntegers = new_sum.sumIntegers(10, 5);

  print('Total de doubles: $totalDoubles');
  print('Total de ints: $totalIntegers');
}
