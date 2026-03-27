import 'package:mocky/mocky.dart';

void main() {
  final randomNouns = <String>[];
  for (var i = 0; i < 100; i++) {
    randomNouns.add(Mocky.word());
  }
  final nounsMap = <String, int>{};
  for (final noun in randomNouns) {
    nounsMap[noun] = noun.length;
  }

  final nounsMapFiltered = <String, int>{};
  for (final entry in nounsMap.entries) {
    if (entry.value % 2 == 0) {
      nounsMapFiltered[entry.key] = entry.value;
    }
  }
  print(nounsMapFiltered.keys);
}
