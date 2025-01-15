import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styling widgets',
      // Usando ThemeData para definir o esquema de cores e a fonte padrão
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        fontFamily: 'JetBrains Mono',
      ),
      home: const MyHomePage(title: 'Styling widgets Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, Color> dynamicColors = {
      'background': Theme.of(context).colorScheme.inversePrimary,
      'color': Theme.of(context).colorScheme.secondary,
    };

    if (_counter >= 10) {
      dynamicColors['background'] = Colors.red;
      dynamicColors['color'] = Colors.white;
    }

    return Scaffold(
      appBar: AppBar(
        // Usando o dynamicColors para definir a cor de fundo da barra de aplicativos e a cor do texto
        backgroundColor: dynamicColors['background'],
        title: Text(
            style: TextStyle(
              color: dynamicColors['color'],
            ),
            widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              // Usando o TextStyle para definir o estilo do texto
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
                fontWeight: FontWeight.bold,
              ),
              '$_counter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Usando o dynamicColors para definir a cor de fundo do botão flutuante e a cor do ícone
        backgroundColor: dynamicColors['background'],
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(
          color: dynamicColors["color"],
          Icons.add,
        ),
      ),
    );
  }
}
