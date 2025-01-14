// Informações retiradas da documentação em: https://dart.dev/language/operators

void main() {
  // Operadores aritméticos
  var a = 10;
  var b = 2;
  print(a + b); // 12
  print(a - b); // 8
  print(a * b); // 20
  print(a / b); // 5.0
  print(a ~/ b); // 5
  print(a % b); // 0

  // Operadores de igualdade
  var c = 10;
  var d = 10;
  print(c == d); // true
  print(c != d); // false

  // Operadores relacionais
  var e = 10;
  var f = 20;
  print(e > f); // false
  print(e < f); // true
  print(e >= f); // false
  print(e <= f); // true

  // Operadores lógicos
  var g = true;
  var h = false;
  print(g && h); // false
  print(g || h); // true
  print(!g); // false

  // Operadores de incremento e decremento
  var i = 10;
  i++;
  print(i); // 11
  i--;
  print(i); // 10

  // Operadores de atribuição
  dynamic j = 10;
  j += 2;
  print(j); // 12
  j -= 2;
  print(j); // 10
  j *= 2;
  print(j); // 20
  j /= 2;
  print(j); // 10.0
  j ~/= 2;
  print(j); // 5
  j %= 2;
  print(j); // 1

  // Operadores de tipo
  var k = 10;
  print(k is int); // true
  print(k is! String); // true

  // Operador ternário
  var l = 10;
  var m = 20;
  var n = l > m ? "l é maior que m" : "l não é maior que m";
  print(n); // l não é maior que m

  // Operador de cascata
  var o = StringBuffer();
  o
    ..write("Hello, ")
    ..write("World!");
  print(o); // Hello, World

  // Operador if null
  var p;
  var q = p ?? "Valor padrão";
  print(q); // Valor padrão

  // Operador de atribuição condicional
  var r;
  r ??= "Valor padrão";

  // Operador de negação
  var s;
  print(!!s); // false

  // Operador de spread
  var t = [1, 2, 3];
  var u = [0, ...t, 4, 5];
  print(u); // [0, 1, 2, 3, 4, 5]
}
