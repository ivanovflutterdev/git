import 'package:dart_learning_journey/lesson_07/homework/names_deepseek.dart';
import 'package:dart_learning_journey/lesson_07/homework/names_gpt.dart';

void main() {
  final commonNames = ukrainianNamesGPT.intersection(ukrainianNamesDeepseek);
  print('Кількість спільних імен: ${commonNames.length}');
  final uniqueToGPT = ukrainianNamesGPT.difference(ukrainianNamesDeepseek);
  print('Імена, які є тільки в GPT: $uniqueToGPT');
  final uniqueToDeepseek = ukrainianNamesDeepseek.difference(ukrainianNamesGPT);
  print('Імена, які є тільки в Deepseek: $uniqueToDeepseek');
}
