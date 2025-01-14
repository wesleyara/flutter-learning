# Fetching Data with Dart

Este projeto demonstra como buscar dados de uma URL usando Dart e o pacote `http`.

## Código

```dart
// Informações retiradas da documentação em: https://dart.dev/tutorials/server/fetch-data

import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final response = await dataFetching('https://dart.dev/f/packages/http.json');
  print(response);
}

Future<Object?> dataFetching(String url) async {
  final parsedUrl = Uri.parse(url);

  try {
    final response = await http.get(parsedUrl);
    final responseJson = json.decode(response.body) as Map<String, dynamic>;

    return responseJson;
  } catch (e) {
    return e;
  }
}
```

## Explicação

1. **Importações**: Importamos `dart:convert` para manipulação de JSON e `package:http/http.dart` para fazer requisições HTTP.
2. **Função Principal**: A função `main` chama `dataFetching` com uma URL e imprime a resposta.
3. **Função `dataFetching`**:
   - Converte a URL em um objeto `Uri`.
   - Tenta fazer uma requisição GET para a URL.
   - Decodifica a resposta JSON e a retorna.
   - Em caso de erro, retorna o erro.

## Referências

- [Documentação do Dart](https://dart.dev/tutorials/server/fetch-data)
- [Pacote HTTP](https://pub.dev/packages/http)