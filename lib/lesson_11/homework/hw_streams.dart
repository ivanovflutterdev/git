import 'dart:async';

Future<void> task6() async {
  final stream1 = Stream.fromIterable([1, 2, 3, 4, 5]);

  await for (final value in stream1) {
    print('await for: $value');
  }

  final stream2 = Stream.fromIterable([1, 2, 3, 4, 5]);

  await stream2.forEach((value) {
    print('listen: $value');
  });
}

Future<void> task7() async {
  final stream = Stream.periodic(
    Duration(seconds: 1),
    (count) => count + 1,
  ).take(10);
  await for (final value in stream) {
    print('$value...');
  }
}

Future<void> task8() async {
  final controller = StreamController<String>();

  controller.stream.listen(
    print,
    onDone: () {
      print('Стрім завершено');
    },
  );

  controller.add('Hello');
  controller.add('World');
  controller.add('Dart');

  await controller.close();
}

void main() async {
  await task6();
  await task7();
  await task8();
}
