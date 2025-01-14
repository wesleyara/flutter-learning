// Informações retiradas da documentação em: https://dart.dev/language/functions

// Todo programa em Dart busca a função main() para iniciar a execução, então, a função main() é o ponto de entrada de um programa Dart.
void main() {
  // Função que não retorna nada
  void printHello() {
    print("Hello, World!");
  }

  printHello();

  // Função que retorna um valor
  String getHello() {
    return "Hello, World!";
  }

  final hello = getHello();
  print(hello);

  // Função que recebe parâmetros
  void printMessage(String message) {
    print(message);
  }

  printMessage("Hello, World!");

  // Função que recebe parâmetros nomeados
  void printMessageNamed({required String message, int? times}) {
    for (var i = 0; i < (times ?? 1); i++) {
      print("$i: $message");
    }
  }

  printMessageNamed(times: 3, message: "Sending a message");

  // Função de seta
  bool isEven(int number) => number % 2 == 0;
  final twoIsEven = isEven(2);
  print(twoIsEven);

  // Função anônima
  var isOdd = (int number) => number % 2 != 0;
  final threeIsOdd = isOdd(3);
  print(threeIsOdd);
}
