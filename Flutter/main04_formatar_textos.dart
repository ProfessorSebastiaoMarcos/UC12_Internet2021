import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      title: 'Formatando textos',
      home: Container(
        //Aplicando cor
        color: Colors.white,

        //Coluna
        child: Row(
          //Definir os filhos de column
          children: [
            Text(
              'Texto exemplo para o widget!',
              style: TextStyle(
                  //Definir um tamanho para a fonte
                  fontSize: 20,

                  //Estilo                  
                  fontStyle: FontStyle.normal,
                  //Peso (negrito)
                  fontWeight: FontWeight.normal,

                  //Espaçamento entre os caracteres
                  letterSpacing: 2,

                  //Retirar o sublinhado do texto
                  decoration: TextDecoration.none,

                  //Colocar uma cor no texto
                  color: Colors.black
              ),
            )
          ],
        ),
      ),
    ));
