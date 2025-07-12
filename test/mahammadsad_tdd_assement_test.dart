import 'package:mahammadsad_tdd_assement/mahammadsad_tdd_assement.dart';
import 'package:test/test.dart';

void main() {

  //Case :
  test('For Empty String function should return 0.', () {
    expect(add("\n"), equals(0));
  });

  test("For String containing integers return sum of those integers.", () {
    expect(add("1"), equals(1));
    expect(add("1,2"), equals(3));
    expect(add(" 1,2 "), equals(3));
  });

  //Case: Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)
  test("Handling new lines between numbers and returning sum of all digits", (){
    expect(add("1\n2,3"), equals(6));
  });


  //Case : Calling Add with a negative number will throw an exception “negatives not allowed” - and the negative that was passed.
  test("Calling Add with a negative number will throw an error.", (){
    expect(() => add("0,-1,2"), throwsA(predicate((e) =>
    e is Exception && e.toString().contains('negatives not allowed: -1')
    )));
  });

  test("Calling Add with a negative number will throw an error.", (){
    expect(() => add("-1,-2,-3,5"), throwsA(predicate((e) => e is Exception && e.toString().contains('negatives not allowed: -1,-2,-3'))));
  });


}
