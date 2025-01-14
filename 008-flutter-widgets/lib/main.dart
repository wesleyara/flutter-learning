import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// O widget raiz da aplicação é o MaterialApp, que é um widget que configura o tema da aplicação e define a rota inicial.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Count'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  PaddedText(),
                  SizedBox(height: 20),
                  CounterWidget(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

// Um widget stateless, ou seja, sem estado, é um widget que não pode ser alterado após ser construído.
class PaddedText extends StatelessWidget {
  const PaddedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Text('Bem vindo ao Simple Count!'),
    );
  }
}

// Um widget stateful, ou seja, com estado, é um widget que pode ser alterado após ser construído.
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

// O estado de um widget stateful é armazenado em uma classe que estende a classe State passando o widget stateful como parâmetro genérico.
class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _handleChangeCounter(int value) {
    // O método setState() é chamado sempre que o estado do widget precisa ser alterado.
    setState(() {
      _counter += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $_counter'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _handleChangeCounter(1),
              child: const Text('Increment'),
            ),
            Padding(padding: const EdgeInsets.all(8.0)),
            ElevatedButton(
              onPressed: () => _handleChangeCounter(-1),
              child: const Text('Decrement'),
            ),
          ],
        ),
        CounterDecimalPlaces(count: _counter),
      ],
    );
  }
}

// O widget CounterDecimalPlaces é um widget stateless que recebe um parâmetro count e exibe a quantidade de casas decimais do valor. Apesar de ser um widget stateless, ele pode ser alterado sempre que a propriedade count for alterada.
class CounterDecimalPlaces extends StatelessWidget {
  const CounterDecimalPlaces({super.key, required this.count});

  final int count;

  String getDecimalPlaces() {
    final Map<int, String> decimalPlaces = {
      1: "unit",
      2: "tens",
      3: "hundreds",
      4: "thousands",
    };

    final int countStringLength = count.toString().length;

    return "Current decimal place: ${decimalPlaces[countStringLength]}";
  }

  @override
  Widget build(BuildContext context) {
    final String decimalPlaces = getDecimalPlaces();

    return Column(
      children: [
        Text(decimalPlaces),
      ],
    );
  }
}
