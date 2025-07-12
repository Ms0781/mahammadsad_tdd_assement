int? add(String numbers) {
  if (numbers.trim().isEmpty) return 0;

  if(numbers.length == 1 && RegExp(r'^\d+$').hasMatch(numbers) ) return int.tryParse(numbers);

  //Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)
  //Note : Here i am assuming that everytime \n will come between two integers.
  if(numbers.contains("\n")) {
    return numbers.replaceAll("\n", ",").split(",").map((e) => int.tryParse(e.trim()) ?? 0).reduce((a,b) => a + b);
  }



  final numList =  numbers.split(",")
      .map((s) => s.trim());

  //Calling add with a negative number will throw an exception: "negative numbers not allowed <negative_number>".
  final negatives = numList.map((e) => int.tryParse(e)).toList().where((n) => (n ?? -1) < 0 ).toList();
  if (negatives.isNotEmpty) {
    throw Exception('negatives not allowed: ${negatives.join(',')}');
  }

  //Allow the add method to handle any amount of numbers.
  return numList
        .map((e) => int.tryParse(e.trim()) ?? 0)
        .reduce((a, b) => a + b);
}
