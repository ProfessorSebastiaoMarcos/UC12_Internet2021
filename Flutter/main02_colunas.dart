//Trabalhando com colunas

//Importar a biblioteca Material
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  title: 'Criando Colunas',
  home: Container(
    color: Colors.grey,
    
    //Child: só pode 1 widget
    child: Column(

      //Children: vários widgets
      children: [
        Text('Texto 1'),
        Text('Texto 2'),
        Text('Texto 3')
      ],
    ),
  ),
));
