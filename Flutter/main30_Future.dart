import 'package:flutter/material.dart';
//Importando a dependência
import 'package:http/http.dart' as http;
//importar uma biblioteca conversora pa Json
import 'dart:convert';

main() => runApp(
      MaterialApp(
        home: Principal(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  //
  //Ao invés de usarmos uma função Void, usamos uma Future
  //O generic 'Map<String, dynamic>' é opcional
  Future<Map<String, dynamic>> buscarValor() async {
    var response = await http.get(Uri.https('blockchain.info', '/pt/ticker'));

    Map<String, dynamic> objetoJson = json.decode(response.body);
    return objetoJson;
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trabalhando com Future'),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<Map>(
        /**
         * Uma Future pode ser concluído de duas maneiras: 
         * com um valor ("A Future é bem-sucedido") ou com um 
         * erro ("A Future fracassa"). Assim podemos utilizar um Switch
         * Case para tratar esses retornos.
         */
        future: buscarValor(),
        //Snapshot estabelece uma omunicação com esses retornos
        builder: (context, snapshot) {
          String resultado = '';
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              resultado = 'Aguardando...';
              break;
            case ConnectionState.done:
              if (snapshot.hasError) {
                resultado = 'Erro nos dados!';
              } else {
                double valor = snapshot.data?['BRL']['buy'];
                resultado = 'Valor do Bitcoin: ${valor.toString()}';
              }
              break;
            default:
          }
          return Center(
            child: Text(resultado),
          );
        },
      ),
    );
  }
}