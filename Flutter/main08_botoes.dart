//Trabalhando com botões

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      title: 'Trabalhando com botões',
      home: Container(
        //Margens
        margin: EdgeInsets.only(top: 60),

        //Espaçamento
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey,

        child: Column(
          //Espaçamento principal
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextButton(
                style: TextButton.styleFrom(
                    //borda arredondada
                    shape: RoundedRectangleBorder(
                        //controlar o arredondamento
                        borderRadius: BorderRadius.circular(10)
                      ),
                    //cor de foreground
                    primary: Colors.pinkAccent,

                    //cor de background
                    backgroundColor: Colors.white,

                    //Espaçamento dentro do botão
                    padding:
                        EdgeInsets.symmetric(
                          horizontal: 32, 
                          vertical: 32)
                        ),
                onPressed: () {
                  print('Executando...');
                },
                child: Text(
                  'Meu Botão',
                  style: TextStyle(
                    fontSize: 20
                  ),
                  )
                ),
                //Forçar um espaçamento
                const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //cor Bckground
                primary: Colors.amber,

                //cor foreground
                onPrimary: Colors.white,
              ),
              onPressed: (){}, 
              child: Text(
                'Botão 2',
                style: TextStyle(
                  fontSize: 20
                ),
              )
            ),
            const SizedBox(height: 20),
            
            //Botão outline
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                
                //Cor do foreground
                primary: Colors.black,

                //Cor da borda
                side: BorderSide(
                  width: 1,
                  color: Colors.orange
                )
              ),

              onPressed: (){}, 
              child: Text(
                'Botão 3',
                style: TextStyle(
                  fontSize: 30
                ),
                )
            ),

            const SizedBox(height: 20),
            //Botão com ícone
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1,
                  color: Colors.amber
                ),
                primary: Colors.red,
                onPrimary: Colors.amber
              ),              
              onPressed: (){}, 
              icon: Icon(
                Icons.add_a_photo,
                color: Colors.white,
              ), 
              label: Text('Label do botão')
            ),

            const SizedBox(height: 20),
            //Botão desativado
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                onSurface: Colors.amber
              ),
              onPressed: null, 
              child: Text(
                'Botão desativado!',
                style: TextStyle(
                  fontSize: 25
                ),
              )
            )
          ],
        ),
      ),
    ));
