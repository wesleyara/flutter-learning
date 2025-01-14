// Informações retiradas da documentação em: https://dart.dev/language/error-handling

void main() {
  // Retornando um erro com throw
  // throw FormatException("Expected at least 1 section");
  // throw "Out of llamas!";

  // Exemplo de erro com try-catch
  try {
    var a = 10;
    var b = 0;
    var result = a ~/ b;
    print(result);
  } catch (e) {
    print("An error occurred: $e");
  }

  // Exemplo de erro com try-catch-finally
  try {
    var a = 10;
    var b = 0;
    var result = a ~/ b;
    print(result);
  } catch (e) {
    print("An error occurred: $e");
  } finally {
    print("This is always executed");
  }

  // Exemplo de erro com try-on
  try {
    var a = 10;
    var b = 0;
    var result = a ~/ b;
    print(result);
  } on Exception {
    print("Cannot divide by zero");
  }

  // Exemplo de erro com try-catch-rethrow
  try {
    var a = 10;
    var b = 0;
    var result = a ~/ b;
    print(result);
  } catch (e) {
    print("An error occurred: $e");
    rethrow;
  }
}
