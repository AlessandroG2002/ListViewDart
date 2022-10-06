import 'package:flutter/material.dart';
import 'esporte.dart';

class EsporteDetail extends StatelessWidget {
  final Esporte esporte;

  const EsporteDetail({Key? key, required this.esporte}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(esporte.name),),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text("Quantidade de jogadores: ${esporte.qntMembers}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}