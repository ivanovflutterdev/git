void main() {
  task1();
  task2();
  task3();
  task4();
  task5();
  task6();
  task7();
  task8();
  task9();
  task10();
}

/// Завдання 1: Математичні оператори
/// Створіть змінні довжина і ширина прямокутника (ширина 18.4, висота 30.9)
///
/// Обчисліть площу і периметр прямокутника.
/// Виведіть площу і периметр.
/// Використайте оператор ~/ для обчислення скільки повних квадратів 1х1 вміщається у площу.
void task1() {
  final width = 18.4;
  final height = 30.9;
  final area = width * height;
  final perimeter = 2 * (width + height);
  final fullSquares = area ~/ 1;
  print('Area: $area');
  print('Perimeter: $perimeter');
  print('Full Squares: $fullSquares');
}

/// Завдання 2: Оператори порівняння
/// Створіть змінну number.
///
/// Перевірте:
/// Чи більше число за 50.
/// Чи менше число за 100.
/// Чи ділиться число на 5 без залишку.
/// Виведіть всі результати.
void task2() {
  final number = 65;
  final isGreater = number > 50;
  final isLess = number < 100;
  final isDiv = number % 5 == 0;
  print('isGreater: $isGreater');
  print('isLess: $isLess');
  print('isDiv: $isDiv');
}

/// Завдання 3: Логічні оператори
/// Створіть змінні hasMoney і isStoreOpen (типу bool).
///
/// Перевірте:
/// Чи можна зробити покупку (якщо є гроші і магазин відкритий).
/// Чи потрібно почекати (якщо магазин закритий або немає грошей).
/// Використайте оператори &&, ||, !.
void task3() {
  final hasMoney = true;
  final isStoreOpen = true;
  final canBuy = hasMoney && isStoreOpen;
  final haveToWait = !isStoreOpen || !hasMoney;
  print('canBuy: $canBuy');
  print('haveToWait: $haveToWait');
}

/// Завдання 4: Тернарний оператор
/// Створіть змінну temperature.
///
/// Використайте тернарний оператор, щоб визначити:
/// Якщо більше 25 — “Тепло”.
/// Якщо менше або дорівнює 25 — “Прохолодно”.
/// Потім створіть ще один тернарний оператор:
/// Якщо менше 10 — вивести “Дуже холодно”.

void task4() {
  final temperature = 16;
  final weather = temperature > 25 ? 'Warm' : 'Cold';
  final cold = temperature < 10 ? 'Very cold' : 'Not very cold';
  print('Weather: $weather');
  print('Cold: $cold');
}

/// Завдання 5: Оператори присвоєння
/// Використовувати тільки оператори присвоєння (+=, -=, *=, /=)
///
/// Створіть змінну score = 0.
/// Створіть зміни з даними:
/// correctAnswers = 17;
/// mistakes = 3;
/// totalQuestions = 20;
///
/// Додайте 10 балів за кожну правильну відповідь.
/// Відніміть 5 балів за кожну помилку.
///
/// Збільшіть загальну кількість балів у 2 рази.
/// Поділіть бали на кількість запитань.
/// Виведіть остаточний результат.

void task5() {
  var score = 0;
  final correctAnswers = 17;
  final mistakes = 3;
  final totalQuestions = 20;
  score += correctAnswers * 10;
  score -= mistakes * 5;
  score *= 2;
  score ~/= totalQuestions;
  print('Final Score: $score');
}

/// Завдання 6: Умовні конструкції if/else
/// Створіть змінну examScore з значенням 56
/// Створіть умовні конструкції if / else if / else
/// Якщо більше 90 — вивести “Відмінно”.
///
/// Якщо 75–90 — “Добре”.
/// Якщо 60–74 — “Задовільно”.
/// Якщо менше 60 — “Не здано”.
///
/// Додатково: якщо оцінка менше 20 — вивести “Повторити курс”.
/// Поексперементуйте, змінюючи  значення examScore

void task6() {
  final examScore  = 19;
  if (examScore > 90) {
    print('Excellent');
  } else if (examScore >= 75) {
    print('Good');
  } else if (examScore >= 60) {
    print('Satisfactory');
  } else {
    print('Not passed');
  }
  if (examScore < 20) {
    print('Repeat the course');
  }
}

/// Завдання 7: Конструкція switch statement
/// Створіть змінну dayNumber від 1 до 7.
///
/// Використайте switch, щоб вивести:
/// Понеділок, Вівторок, …, Неділя.
/// Якщо день не від 1 до 7 — вивести “Невірний номер дня”.
/// Додатково: для вихідних (6, 7) вивести “Вихідний день 🎉”.

void task7() {
  final dayNumber = 5;
  switch (dayNumber) {
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    case 3:
      print('Wednesday');
    case 4:
      print('Thursday');
    case 5:
      print('Friday');
    case 6:
      print('Saturday');
    case 7:
      print('Sunday');
    default:
      print('Invalid day number');
      if (dayNumber == 6 || dayNumber == 7) {
        print('Weekend 🎉');
      }
  }
}

/// Завдання 8: Цикли for
/// Виведіть всі числа від 1 до 10.
/// Виведіть тільки парні числа.
/// Обчисліть суму чисел від 1 до 10.

void task8() {
  var sum = 0;
  for (var i = 1; i <= 10; i++) {
    print(i);
    if (i % 2 == 0) {
      print('Even number: $i');
    }
    sum += i;
  }
  print('Sum: $sum');
}

/// Завдання 9: Цикл while
/// Почніть із числа 10.
///
/// Виводьте числа, зменшуючи їх на 1, поки не досягнете 0.
/// Якщо число парне — вивести “Парне число: …”,
/// якщо непарне — “Непарне число: …”.

void task9() {}

/// Завдання 10: Break і Continue
/// Створіть цикл for від 1 до 20.
///
/// Якщо число ділиться на 3 без залишку — пропустіть його (continue).
/// Якщо число більше 15 — зупиніть цикл (break).
/// Виведіть тільки ті числа, які пройшли обидві перевірки.
void task10() {}
