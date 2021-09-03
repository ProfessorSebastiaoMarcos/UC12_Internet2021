//Sorteio da MegaSena
import 'dart:math';

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppMegaSena(),
    ));

class AppMegaSena extends StatefulWidget {
  @override
  _AppMegaSenaState createState() => _AppMegaSenaState();
}

class _AppMegaSenaState extends State<AppMegaSena> {

  //Lógica do sorteio
List<int> _sorteados = []; //Listnumber
var _sorteio= 'Clique aqui para sortear os números';

void sortearNumeros() {
  for (var i = 0; i <= 5; i++) {
    var numeroSorteado = Random().nextInt(59) + 1;

      if ((!_sorteados.contains(numeroSorteado) || _sorteados.length < 6 )) {
        _sorteados.add(numeroSorteado);
      } 
    }
    
  
  setState(() {
    //Seta os números como strings para poder formatar
    _sorteio = _sorteados.toString();
    //Limpa o array para o próximo estado
    _sorteados.clear();
  });
}
//Fim lógica do sorteio

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Sorteio MegaSena'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Container(
          //Definindo o espaçamento
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              width: 20,
              color: Colors.lightGreen
            )
          ),
          child: Column(
            //Definir alinhamentos
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,

            //Array de widgets
            children: [
              Image.asset(
                'images/logo-megasena.png',
              ),
              Text(
                _sorteio,
                //Centralizando o texto
                textAlign: TextAlign.center,
                //Formatando o texto
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.normal,
                  color: Colors.amberAccent
                ),
              ),
              ElevatedButton(
                //Formatando o botão
                style: ElevatedButton.styleFrom(
                  primary: Colors.green
                ),
                onPressed: sortearNumeros, 
                child: Text(
                  'Sortear',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ))
            ],
          ),
        ),
      ),
    );
  }
}