# Control flow in Dart

## Laços

### Exemplo de Laços em Dart

```dart
void main() {
  // Laço for simples
  var message = 'Dart is fun';
  for (var i = 0; i < 5; i++) {
    message += '!';
  }
  print(message); // Dart is fun!!!!!

  // Laço for-in
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }

  // Laço for-each
  var collection2 = [0, 1, 2];
  collection2.forEach(print); // 0 1 2

  // Laço while
  var count = 0;
  while (count < 5) {
    print(count); // 0 1 2 3 4
    count++;
  }

  // Laço do-while
  var count2 = 0;
  do {
    print(count2); // 0 1 2 3 4
    count2++;
  } while (count2 < 5);

  // Laço de repetição infinito com break
  var maxCount = 5;
  while (true) {
    if (maxCount == 0) {
      break;
    }
    print("I'm infinite");
    maxCount--;
  }
}
```

## Estruturas Condicionais

### Exemplo de Estruturas Condicionais em Dart

```dart
void main() {
  // Declaração de variáveis
  var isRaining = true;
  var isSnowing = false;

  // Estrutura condicional if
  if (isRaining) {
    print("It's raining");
  }

  // Estrutura condicional if-else
  if (isRaining) {
    print("It's raining");
  } else {
    print("It's not raining");
  }

  // Estrutura condicional if-else-if
  if (isRaining) {
    print("It's raining");
  } else if (isSnowing) {
    print("It's snowing");
  } else {
    print("It's not raining or snowing");
  }

  // Estrutura condicional ternária
  var isRainingMessage = isRaining ? "It's raining" : "It's not raining";
  print(isRainingMessage);

  // Estrutura condicional switch
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print('Closed');
      break;
    case 'PENDING':
      print('Pending');
      break;
    case 'APPROVED':
      print('Approved');
      break;
    default:
      print('Unknown');
  }

  // Estrutura condicional switch com guard clause
  var command2 = 'CLOSED';
  switch (command2) {
    case 'CLOSED' when isRaining && !isSnowing:
      print('Closed');
      break;
    case 'PENDING':
      print('Pending');
      break;
    case 'APPROVED':
      print('Approved');
      break;
    default:
      print('Unknown');
  }
}
```

## Tratamento de Erros

### Exemplo de Tratamento de Erros em Dart

```dart
void main() {
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
```