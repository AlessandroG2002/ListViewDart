import 'package:flutter/material.dart';

class Esporte {
  String name;
  int qntMembers;

  Esporte(this.name, this.qntMembers);

  static Widget criarColuna(List<Esporte> entries){
    List<Container> filhos=[];

    for (int i=0; i<entries.length; i++){
      filhos.add(Container(height: 50,
          color: Colors.red[entries[i].qntMembers],
          child: Center(child: Text(entries[i].name))
        )
      );
    }
    return Column(children: filhos,);
  }
}