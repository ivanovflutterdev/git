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

void main() async {
  await task6();
}
