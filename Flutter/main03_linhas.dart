//Trabalhando com Linhas

//Importar a biblioteca Material
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  title: 'Criando Colunas',
  home: Container(
    color: Colors.amber,
    
    //Child: só pode 1 widget
    child: Row(

      //Children: vários widgets
      children: [
        Text('T1'),
        Text('T2'),
        Text('T3')
      ],
    ),
  ),
));
