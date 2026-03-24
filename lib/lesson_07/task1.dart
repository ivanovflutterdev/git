import 'dart:math';

void main() {
  final numbers = <int>[];
  final random = Random();
  for (var i = 0; i < 100; i++) {
    final number = random.nextInt(100);
    numbers.add(number);
  }
  print(numbers);
  print('65-й елемент: ${numbers[64]}');
  numbers.insert(49, 1000000000);
  numbers.remove(24);
  numbers.remove(45);
  numbers.remove(66);
  numbers.remove(88);

  var sum = 0;
  for (final number in numbers) {
    if (number % 3 == 0) {
      sum += number;
    }
  }
  print('Сума чисел, що діляться на 3: $sum');

  final temp = <int>[];
  for (final number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print('Кількість парних чисел: ${temp.length}');
}
