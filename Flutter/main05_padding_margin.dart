//Padding e margin: Espaçamentos interno e externos

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  
  //Desligar a faixa debug
  debugShowCheckedModeBanner: false,
  
  title: 'Padding e Margin',
  home: Container(
    //Definir o espaçamento interno
    //EdgeInsets.all(): para todos os lados
    //EdgeInsets.fromLTRB(): Especificar todos os lados
    //EdgeInsets.only(): Parâmetros nomeados e opcionais

    padding: EdgeInsets.only(left: 20, top: 60),

    //Definir o espaçamento externo
    //EdgeInsets.all(): para todos os lados
    //EdgeInsets.fromLTRB(): Especificar todos os lados
    //EdgeInsets.only(): Parâmetros nomeados e opcionais
    margin: EdgeInsets.only(left: 20, top: 70, right: 20),

    decoration: BoxDecoration(
      //Adicionar cor
      color: Colors.blueGrey,

      //Adicionando uma borda
      border: Border.all(
        width: 5,
        color: Colors.amber
      )
    ),



    child: Column(
      children: [
        Text(
          'Texto Exemplo para o App',
          
          //Alinhamento de texto
          textAlign: TextAlign.center,

          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
            color: Colors.white
            
          ),
        )
      ],
    ),
  ),
));
