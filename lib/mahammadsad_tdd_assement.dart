int? add(String numbers) {
  if (numbers.isEmpty) return 0;

   return numbers
        .split(',')
        .map((e) => int.tryParse(e.trim()) ?? 0)
        .reduce((a, b) => a + b);
}
