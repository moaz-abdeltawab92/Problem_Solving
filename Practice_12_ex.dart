// 1. Random Age Generator with Null Handling
import 'dart:math';

Future<int?> fetchUserAge() async {
  await Future.delayed(Duration(seconds: 1));
  return Random().nextBool() ? Random().nextInt(80) : null;
}

void main() {
  fetchUserAge().then((age) {
    int output = age ?? 18;
    print("User age: $output");
  });
}

=====================================

// 2. Extract Unique Letters & Calculate Strength
void main() {
  String input = "learn flutter 2025";

  var filtered = input
      .split('')
      .toSet()
      .where((char) => RegExp(r'[a-zA-Z]').hasMatch(char))
      .toList();

  print("Unique letters: $filtered");

  List<int> asciiList = filtered.map((c) => c.codeUnitAt(0)).toList();
  int strengthScore = asciiList.isEmpty ? 0 : asciiList.reduce((a, b) => a + b);

  print("ASCII score: $strengthScore");

  String status = strengthScore > 950 ? "High" : "Low";
  print("Strength Level: $status");
}
=====================================

// 3. Count Word Occurrences in Text
void main() {
  String paragraph = "flutter dart flutter ui dart dart dart";
  List<String> wordList = paragraph.split(' ');
  Map<String, int> counter = {};

  for (var word in wordList) {
    counter[word] = (counter[word] ?? 0) + 1;
  }

  counter.forEach((word, count) {
    print("Word '$word' appeared $count times.");
  });
}
=====================================

// 4. Convert Text to Uppercase with Delay
import 'dart:async';

Future<List<String>> convertToUpperLater(String input) async {
  await Future.delayed(Duration(seconds: 2));
  return input.split('').map((e) => e.toUpperCase()).toList();
}
=====================================

void main() async {
  String text = "waiting";
  List<String> finalOutput = await convertToUpperLater(text);
  print("Uppercase result: $finalOutput");
}
=====================================

// 5. Check if Word Exists in Set
void main() {
  Set<String> tech = {"flutter", "firebase", "api", "json"};
  String search = "api";

  if (tech.contains(search)) {
    print("Yes, '$search' is available.");
  } else {
    print("No such entry found.");
  }
}
=====================================

// 6. Find and Count Vowels
void main() {
  String phrase = "object oriented";
  List<String> allChars = phrase.split('');
  List<String> vowelChars = allChars.where((c) => 'aeiou'.contains(c.toLowerCase())).toList();

  print("Vowels: $vowelChars");
  print("Count of vowels: ${vowelChars.length}");
}
=====================================

// 7. Extract and Add Numbers from Text
void main() {
  String mixed = "t4x2p5";

  List<int> numbers = mixed
      .split('')
      .where((c) => RegExp(r'[0-9]').hasMatch(c))
      .map(int.parse)
      .toList();

  int result = numbers.reduce((a, b) => a + b);

  print("Digits found: $numbers");
  print("Total: $result");
}
=====================================

// 8. Turn Each Letter into Capital
void main() {
  String language = "dartlang";
  List<String> capital = language.split('').map((c) => c.toUpperCase()).toList();
  print("Capital version: $capital");
}
=====================================

// 9. Show All Different Letters
void main() {
  String subject = "technology";
  Set<String> allUnique = subject.split('').toSet();
  print("Different letters: $allUnique");
}
=====================================

// 10. Separate Characters and Count
void main() {
  String sentence = "good morning";
  List<String> charList = sentence.split('');
  print("Characters: $charList");
  print("Count: ${charList.length}");
}
=====================================

// 11. Prime Number Checker
import 'dart:io';

void main() {
  stdout.write("enter a number: ");
  int number = int.parse(stdin.readLineSync());
  checkPrime(number);
}

void checkPrime(int number) {
  List<int> a = [
    for (var i = 1; i <= number; i++)
      if (number % i == 0) i ];

  a.length == 2
      ? print("The number is a prime")
      : print("The number is not a prime");
}
=====================================

// 12. Palindrome Checker
import 'dart:io';

void main() {
  stdout.write("enter a word: ");
  String input = stdin.readLineSync().toLowerCase();
  String rev = input.split('').reversed.join('');
  
  input == rev
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}
