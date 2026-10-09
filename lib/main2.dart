import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
    const MyApp({super.key}); //constructeur
    @override
    Widget build(BuildContext context){ //methode
    
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
        );
  }
}


class HomePage extends StatelessWidget{
    const HomePage({super.key}); //key: pour identifier les widgets

    @override
    Widget build(BuildContext context) {
        return Scaffold( //structure la page  c'est l'interface de l'application
            appBar: AppBar( //propriete de scafold
                backgroundColor: const Color.fromARGB(255, 48, 241, 209),
                foregroundColor: Colors.green,
                title: Text("Whatsapp"), 
                leading: IconButton(
                        icon: Icon(Icons.search), 
                        onPressed: () => print('Recherche'),
                        ),
                actions: [
                    IconButton( 
                        icon: Icon(Icons.more_vert), 
                        onPressed: () => print('Menu'),
                    )
                ],
            ),

            body: Text("hello"), //propriete de scafold
            );
    }
}
