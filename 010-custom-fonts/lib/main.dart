import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Fonts',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Custom Fonts Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  style: TextStyle(
                    // Usando font customizada fornecida pelo asset em /fonts e declarado em pubspec.yaml
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize:
                        Theme.of(context).textTheme.headlineMedium!.fontSize,
                  ),
                  "A text using custom font Poppins with weight 600 of font asset"),
              Text(
                  style: TextStyle(
                    // Usando font customizada fornecida pelo google_fonts package
                    fontFamily: GoogleFonts.robotoMono().fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize:
                        Theme.of(context).textTheme.headlineMedium!.fontSize,
                  ),
                  "A text using custom font Roboto Mono with weight 600 of google_fonts"),
            ]),
      ),
    );
  }
}
