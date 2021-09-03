import 'package:flutter/material.dart';
//Importando a dependência
import 'package:http/http.dart' as http;
//importar uma biblioteca conversora
import 'dart:convert';

main() => runApp(
      MaterialApp(
        home: Bitcoin(),
      ),
    );

class Bitcoin extends StatefulWidget {
  @override
  _BitcoinState createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
  String _valor = '0';

  _buscaValor() async {
    var response = await http.get(Uri.https('blockchain.info', '/pt/ticker'));

    Map<String, dynamic> objetoJason = json.decode(response.body);

    setState(() {
      _valor = objetoJason['BRL']['15m'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação Bitcoin'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'images/bitcoin.png',
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Valor do Bitcoin R\$$_valor',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _buscaValor,
                  child: Text('Cotação'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
