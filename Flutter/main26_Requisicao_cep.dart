//Para consumir recursos é preciso implementar as
//dependências do Flutter
//ou seja, editar o arquivo pubspec.yaml
//# Dependência HTTP
////http: ^0.12.0+1
//

import 'package:flutter/material.dart';
//Importando a dependência
import 'package:http/http.dart' as http;
//importar uma biblioteca conversora pa Json
import 'dart:convert';

main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Controller do textfield
  TextEditingController _textEditingControllerCep = TextEditingController();

  //Criando as variáveis
  String? _logradouro = '';
  String? _complemento = '';
  String? _bairro = '';
  String? _localidade = '';
  String? _uf = '';

  _buscaCep() async {
    int? cep = int.tryParse(_textEditingControllerCep.text);

    final String authority = 'viacep.com.br';
    final String path = 'ws/$cep/json/';

    var response = await http.get(Uri.https(authority, path));

    //Decodificand e passando para um Map
    Map<String, dynamic> objetoJason = json.decode(response.body);

    setState(() {
      _logradouro = objetoJason['logradouro'];
      _complemento = objetoJason['complemento'];
      _bairro = objetoJason['bairro'];
      _localidade = objetoJason['localidade'];
      _uf = objetoJason['uf'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de Recursos: API CEP'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'Entre com o o CEP'),
              style: TextStyle(
                fontSize: 18,
              ),
              controller: _textEditingControllerCep,
            ),
            ElevatedButton(
              onPressed: _buscaCep,
              child: Text('Buscar endereço'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Endereço: $_logradouro'),
                Text('Complemento: $_complemento'),
                Text('Bairro: $_bairro'),
                Text('Localidade: $_localidade'),
                Text('UF: $_uf')
              ],
            )
          ],
        ),
      ),
    );
  }
}
