// Question for Practice 7
// Task 1 Dart

import 'dart:math'; 

// 1. What is the purpose of the ? operator in Dart null safety?
// The `?` operator allows a variable to accept a null value, meaning the variable is nullable.
// Example:
String? name; // This variable can hold a String or null.

// 3. How do you declare a nullable type in Dart null safety?
// You declare it by placing `?` after the type. For example:
int? nullableAge;

// 5. Function that accepts a nullable int and returns 0 if it's null using ?? operator.
int getValue(int? number) {
  return number ?? 0;
}

// 6. Function that randomly returns 100 or null.
int? generateRandom() {
  Random random = Random();
  return random.nextBool() ? 100 : null;
}

// 2, 4, 5, 6 - Inside main function
void main() {
  // 2. Create a late variable named address, assign a US value to it and print it.
  late String address;
  address = "USA";
  print("Address: $address");

  // 4. Create an age variable and assign a null value to it using `?`.
  int? age = null;
  print("Age: $age");

  // 5. Call getValue function with a null and non-null value.
  print("Get Value (null): ${getValue(null)}");
  print("Get Value (10): ${getValue(10)}");

  // 6. Call generateRandom and assign the result to a non-nullable variable with default 0.
  int status = generateRandom() ?? 0;
  print("Status: $status");
}
