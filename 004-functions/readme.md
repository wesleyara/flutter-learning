# Functions in Dart

Este documento fornece exemplos de diferentes tipos de funções em Dart, retirados da [documentação oficial](https://dart.dev/language/functions).

## Função `main()`

Todo programa em Dart busca a função `main()` para iniciar a execução. Portanto, a função `main()` é o ponto de entrada de um programa Dart.

```dart
void main() {
  // Função que não retorna nada
  void printHello() {
    print("Hello, World!");
  }

  // Chama a função printHello
  printHello();

  // Função que retorna um valor
  String getHello() {
    return "Hello, World!";
  }

  // Chama a função getHello e armazena o resultado em uma variável
  final hello = getHello();
  print(hello);

  // Função que recebe parâmetros
  void printMessage(String message) {
    print(message);
  }

  // Chama a função printMessage com um argumento
  printMessage("Hello, World!");

  // Função que recebe parâmetros nomeados
  void printMessageNamed({required String message, int? times}) {
    for (var i = 0; i < (times ?? 1); i++) {
      print("$i: $message");
    }
  }

  // Chama a função printMessageNamed com parâmetros nomeados
  printMessageNamed(times: 3, message: "Sending a message");

  // Função de seta (função curta)
  bool isEven(int number) => number % 2 == 0;

  // Chama a função isEven e armazena o resultado em uma variável
  final twoIsEven = isEven(2);
  print(twoIsEven);

  // Função anônima
  var isOdd = (int number) => number % 2 != 0;

  // Chama a função anônima e armazena o resultado em uma variável
  final threeIsOdd = isOdd(3);
  print(threeIsOdd);
}
```
