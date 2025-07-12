int? add(String numbers) {
  if (numbers.trim().isEmpty) return 0;

  if(numbers.length == 1 && RegExp(r'^\d+$').hasMatch(numbers) ) return int.tryParse(numbers);

  //Allow the add method to handle any amount of numbers.
  return numbers
        .split(',')
        .map((e) => int.tryParse(e.trim()) ?? 0)
        .reduce((a, b) => a + b);
}
