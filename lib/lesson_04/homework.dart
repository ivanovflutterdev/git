void main() {
  primitives();
  collections();
  varFinalConst();
  record();
  nullable();
}

/// Створи змінні та виведи їх:

/// Завдання 1: Примітивні типи
/// - age (int) — твій вік
/// - height (double) — твій зріст у метрах
/// - name (String) — твоє ім'я
/// - isStudent (bool) — чи ти студент
void primitives() {
  int age = 33;
  double height = 1.73;
  String name = 'Oleksandr';
  bool isStudent = true;
  print('Age: $age');
  print('Height: $height m');
  print('Name: $name');
  print('Is Student: $isStudent');
}

/// Завдання 2: Колекції
/// 1. List — 3 твої улюблені кольори
/// 2. Set — 3 унікальні оцінки, спробуй створити перевір print-ми, що вони не виводяться
/// 3. Map — 3 предмети та їх оцінки
void collections() {
  List<String> favoriteColors = ['Blue', 'Black', 'White'];
  print('Favorite Colors: $favoriteColors');

  Set<int> uniqueGrades = {5, 4, 3};
  print('Unique Grades: $uniqueGrades');
  uniqueGrades.add(5);
  print('Unique Grades after adding duplicate: $uniqueGrades');

  Map<String, int> subjectsGrades = {
    'Math': 5,
    'Science': 4,
    'Literature': 3
  };
  print('Subjects and Grades: $subjectsGrades');
}

/// Завдання 3: var, final, const
/// 1. Створи змінну через var — наприклад, місто проживання та зміни її декілька разів (print після кожної зміни)
/// 2. Створи змінну через final — наприклад, країна
/// 3. Створи змінну через const — наприклад, кількість днів у тижні
void varFinalConst() {
  var city = 'Kyiv';
  print('City: $city');
  city = 'Lviv';
  print('City: $city'); 
  city = 'Odesa';
  print('City: $city');
  final country = 'Ukraine';
  print('Country: $country');
  const daysInWeek = 7;
  print('Days in Week: $daysInWeek');
}

/// Завдання 4: Record
/// Створи іменований та не іменований (позиційний) record з твоїм ім'ям та віком і виведи обидва поля.
void record() {
  final personRecord = (name: 'Oleksandr', age: 33);
  print('Named Record: Name: ${personRecord.name}, Age: ${personRecord.age}');

  final posRecord = ('Oleksandr', 33);
  print('Positional Record: Name: ${posRecord.$1}, Age: ${posRecord.$2}');
}

/// Завдання 5: Nullable (опціонально)
/// Створи змінну String? nickname — може бути null або ім'я.
/// Виведи її через ??: якщо null — виведи "Немає", інакше — значення.
void nullable() {
  String? nickname;
  print('Nickname: ${nickname ?? "Null"}');
  nickname = 'Oleksandr';
  print('Nickname: $nickname');
}
