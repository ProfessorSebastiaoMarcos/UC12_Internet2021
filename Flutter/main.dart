import 'package:flutter/material.dart';
main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Criando uma estrutura
        //Divisão de 3 áreas: Título, corpo e rodapé
        appBar: AppBar(
          //Título
          title: Text('Minha aplicação'),
          backgroundColor: Colors.amber,
        ),
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Text(
            'Conteúdo do App',
            style: TextStyle(fontSize: 20),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          //Aplicando uma cor
          color: Colors.lightBlue,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              //Aray de widgets
              children: [
                Text('Texto 1 bottom'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Texto 2 bottom',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Text('Texto 3 botton')
              ],
            ),
          ),
        ),
      ),
    ));

