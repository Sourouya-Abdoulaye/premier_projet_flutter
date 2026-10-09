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
      appBar: AppBar(
        title: Text("My INSTAGRAMME LITE"),
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () => {print("quel chose a faire")},
          icon: Icon(Icons.search),
        ),
        actions: [
          IconButton(
            onPressed: () => {print("quel chose a de menu")},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      // body: Center(child: Text("Mon instagramme complet")),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: const Color.fromARGB(255, 8, 184, 146),
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Container(
            width: 200,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // remplace "color:"
              color: const Color.fromARGB(255, 175, 9, 64),
              borderRadius: BorderRadius.horizontal(),
              // coins arrondis
              border: Border.all(
                // bordure
                color: const Color.fromARGB(255, 7, 19, 187),
                width: 2,
              ),
            ),
            child: Text('Salut'),
          ),
        ),
      ),
    );
  }
}
