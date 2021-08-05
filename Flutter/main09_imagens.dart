import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Trabalhando com imagens',
  home: Container(
    margin: EdgeInsets.only(top: 60),

    decoration: BoxDecoration(
      //backgound
      color: Colors.white,

      //definir bordas
      border: Border.all(
        width: 3,
        color: Colors.amber
      )
    ),

    //Um child para o widget Image
    child: Image.asset(
      //Caminho da imagem
    'images/passeio.jpg',
    //Definição de preenchimento da imagem
    //cobre todo o espaçamento cortanto a imagem
    //fit: BoxFit.cover,    
    //fit: BoxFit.contain //valor padrão
    //fit: BoxFit.fill //Preenche com distorção
    //fit: BoxFit.fitHeight, //preencher pela altura (Largura na proporção)
    //fit: BoxFit.fitWidth, //preencher pela largura (altura na proporção)
    //fit: BoxFit.none //Mantem a imagem original
    fit: BoxFit.contain //Mantem a imagem original
    ),
  ),
));
