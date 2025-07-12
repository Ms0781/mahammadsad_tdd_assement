import 'package:mahammadsad_tdd_assement/mahammadsad_tdd_assement.dart';
import 'package:test/test.dart';

void main() {

  //Case 1 :
  test('For Empty String function should return 0.', () {
    expect(add("\n"), equals(0));
  });

  test("For String containing integers return sum of those integers.", () {
    expect(add("1"), equals(1));
    expect(add("1,2"), equals(3));
    expect(add(" 1,2 "), equals(3));
  });



}
