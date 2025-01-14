// Informações retiradas da documentação em: https://dart.dev/language/branches

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
