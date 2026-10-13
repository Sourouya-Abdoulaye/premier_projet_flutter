import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container')),
      backgroundColor: Colors.grey[200],

      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [MaCard(), MaCard(), MaCard()],
        ),
      ),
    );
  }
}

class MaCard extends StatelessWidget {
  const MaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Taille
      width: 250,
      height: 150,
      // Espace AUTOUR de la boîte
      margin: const EdgeInsets.all(20),
      // Espace INTÉRIEUR
      padding: const EdgeInsets.all(20),
      // Décorations
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.deepPurple, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: const Text(
        'Salut',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
