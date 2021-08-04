//alinhamentos

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      //remover a faixa debug
      debugShowCheckedModeBanner: false,

      title: 'Alinhamentos',
      home: Container(
        //Definindo magens
        margin: EdgeInsets.only(top: 50),

        //Definindo borda e cor do Container
        decoration:
            BoxDecoration(border: Border.all(width: 5, color: Colors.blue)),

        //Criar uma linha
        child: Column(

          children: [
            Text(
              'T01',
              style: TextStyle(
                decoration: TextDecoration.none, 
                fontSize: 30),
            ),
            Text(
              'T02',
              style: TextStyle(
                decoration: TextDecoration.none, 
                fontSize: 30),
            ),
            Text(
              'T03',
              style: TextStyle(
                decoration: TextDecoration.none, 
                fontSize: 30),
            )
          ],
        //Alinhamento principal
        //mainAxisAlignment: MainAxisAlignment 
        //.start .center .end .spaceEnvely
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        //Configurar o eixo que cruza o alinhamento principal
        //crossAxisAlignment: CrossAxisAlignment.start .end .center
        crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    ));
