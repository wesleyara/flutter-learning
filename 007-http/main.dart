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
