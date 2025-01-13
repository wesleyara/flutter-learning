// Informações retiradas da documentação em: https://dart.dev/language/built-in-types

void main() {
  // O tipo int é usado para representar números inteiros
  const int age = 25;

  // O tipo double é usado para representar números decimais
  const double height = 5.8;

  // O tipo num é usado para representar números inteiros e decimais
  const num weight = 70.5;

  // Ao declarar um double com valor inteiro, o Dart automaticamente converte para seu valor em decimal
  const double pi = 3; // 3.0

  print("Age: $age, Height: $height, Weight: $weight, Pi: $pi");

  // O tipo String é usado para representar textos
  // String declarada com aspas duplas
  const String name = "Wesley";

  // String declarada com aspas simples
  const String lastName = 'Araujo';

  // String declarada com aspas triplas
  const String fullName = """
Nome: $name
Sobrenome: $lastName
""";

  // Veja mais sobre manipulações de number e string no arquivo 003-built-in-types/convert.dart
  print(fullName);

  // O tipo bool é usado para representar valores booleanos
  const bool isDartCool = true;

  print("Is Dart cool? $isDartCool");

  // O tipo List é usado para representar uma lista de valores
  const List<String> fruits = ["Apple", "Banana", "Orange"];
  // tendo em vista que a lista é imutável, não é possível adicionar ou remover elementos
  // fruits.add("Grape"); // Erro
  // fruits.remove("Banana"); // Erro

  final int firstFruitLength = fruits.length;

  print("Fruits: $fruits, Fruits Length: $firstFruitLength");

  // O tipo Set é usado para representar um conjunto de valores únicos
  const Set<String> uniqueFruits = {"Apple", "Banana", "Orange"};
  // tendo em vista que o conjunto é imutável, não é possível adicionar ou remover elementos
  // uniqueFruits.add("Grape"); // Erro
  // se não fosse const, também não poderiamos adicionar elementos repetidos
  // uniqueFruits.add("Apple"); // Erro

  print("Unique Fruits: $uniqueFruits");

  // O tipo Map é usado para representar um conjunto de valores
  const Map<String, dynamic> person = {
    "name": name,
    "age": age,
    "height": height,
    "weight": weight,
    "isDartCool": isDartCool
  };

  print("Person: $person");

  // Usando spread operator para adicionar elementos de uma lista em outra
  const List<String> moreFruits = ["Grape", "Strawberry", "Watermelon"];
  const List<String> allFruits = [...fruits, ...moreFruits];

  print("All Fruits: $allFruits");
}

// Generics
// O Dart suporta generics, que são classes, métodos e funções que operam em tipos especificados.
// Veja mais sobre generics no arquivo 003-built-in-types/generics.dart
