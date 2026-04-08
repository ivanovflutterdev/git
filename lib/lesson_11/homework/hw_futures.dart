
Future<String> fetchName() async {
  await Future<void>.delayed(const Duration(seconds: 2));
  return 'Oleksandr';
}

Future<void> task1() async {
  final name = await fetchName();
  print('Мене звати $name');
}

Future<String> fetchAge() async {
  await Future<void>.delayed(const Duration(milliseconds: 1500));
  return '25';
}

String getYearWord(int age) {
  if (age % 10 == 1 && age % 100 != 11) {
    return 'рік';
  } else if (age % 10 >= 2 &&
      age % 10 <= 4 &&
      (age % 100 < 10 || age % 100 >= 20)) {
    return 'роки';
  } else {
    return 'років';
  }
}

Future<void> task2() async {
  final ageString = await fetchAge();
  final age = int.parse(ageString);

  print('Мені $age ${getYearWord(age)}');
}

Future<void> task3() async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  final name = await fetchName();
  final age = await fetchAge();

  stopwatch.stop();

  print('Мене звати $name');
  print('Мені $age років');
  print('Час виконання: ${stopwatch.elapsedMilliseconds} ms');
}

Future<void> task4() async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  final nameFuture = fetchName();
  final ageFuture = fetchAge();

  final results = await Future.wait([
    nameFuture,
    ageFuture,
  ]);

  stopwatch.stop();

  final  name = results[0];
  final  age = results[1];

  print('Мене звати $name');
  print('Мені $age років');
  print('Час виконання: ${stopwatch.elapsedMilliseconds} ms');
}

Future<void> task5(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    print('$i...');
    await Future<void>.delayed(const Duration(seconds: 1));
  }
  print('Cтарт!');
}

Future<void> main() async {
  await task1();
  await task2();
  await task3();
  await task4();
  await task5(5);
}
