# Built-in Types in Dart

## Overview

This document provides an overview of the built-in types in Dart, including examples and explanations.

## Main Dart File

```dart
void main() {
  // Integer type
  const int age = 25;

  // Double type
  const double height = 5.8;

  // Num type (can be integer or double)
  const num weight = 70.5;

  // Dart automatically converts integer to double
  const double pi = 3; // 3.0

  print("Age: $age, Height: $height, Weight: $weight, Pi: $pi");

  // String type
  const String name = "Wesley";
  const String lastName = 'Araujo';
  const String fullName = """
Nome: $name
Sobrenome: $lastName
""";

  print(fullName);

  // Boolean type
  const bool isDartCool = true;
  print("Is Dart cool? $isDartCool");

  // List type
  const List<String> fruits = ["Apple", "Banana", "Orange"];
  final int firstFruitLength = fruits.length;
  print("Fruits: $fruits, Fruits Length: $firstFruitLength");

  // Set type
  const Set<String> uniqueFruits = {"Apple", "Banana", "Orange"};
  print("Unique Fruits: $uniqueFruits");

  // Map type
  const Map<String, dynamic> person = {
    "name": name,
    "age": age,
    "height": height,
    "weight": weight,
    "isDartCool": isDartCool
  };
  print("Person: $person");

  // Using spread operator
  const List<String> moreFruits = ["Grape", "Strawberry", "Watermelon"];
  const List<String> allFruits = [...fruits, ...moreFruits];
  print("All Fruits: $allFruits");
}
```

## Generics in Dart

```dart
void main() {
  final GenericClass<int> genericClass = GenericClass<int>();
  final variableType = genericClass.getVariableType(1);
  print(variableType); // int
}

class GenericClass<T> {
  getVariableType(T variable) {
    return variable.runtimeType;
  }
}
```

## Converting Types in Dart

```dart
void main() {
  // String to int
  var one = int.parse('1');
  assert(one == 1);

  // String to double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int to String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double to String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}
```

## Additional Resources

- For more information on built-in types, visit the [Dart documentation](https://dart.dev/language/built-in-types).
- For more examples on generics, see the `generics.dart` file.
- For more examples on type conversions, see the `convert.dart` file.