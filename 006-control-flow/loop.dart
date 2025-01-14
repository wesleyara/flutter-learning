// Informações retiradas da documentação em: https://dart.dev/language/loops

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
