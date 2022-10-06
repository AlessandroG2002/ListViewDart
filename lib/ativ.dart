import 'package:flutter/material.dart';
import 'myComponents/esporte.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Atividade(),
    );
  }
}

class Atividade extends StatelessWidget {

  final List<Esporte> entries = <Esporte>[
  Esporte("Futebol", 300),
  Esporte("Basquete", 200),
  Esporte("Tênis", 100)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Atividade"),
      ),
      body:
      ListView.builder(
      padding: const EdgeInsets.all(8),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Esporte.criarColuna(entries);
          }
          )
    ); // This trailing comma makes auto-formatting nicer for build methods
  }
}