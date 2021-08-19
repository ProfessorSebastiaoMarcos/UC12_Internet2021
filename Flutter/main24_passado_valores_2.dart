import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Instanciando o cotroller para o texto
  TextEditingController _textEditingControllerNome = TextEditingController();

  //Função para salvar o texto
  salvar() {
    String _nome;

    setState(() {
      _nome = _textEditingControllerNome.text;

      //Chamando a tela 2
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ListaNome(nome: _nome),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Home'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _textEditingControllerNome,
                decoration: InputDecoration(labelText: 'Insira seu nome'),
              ),
              ElevatedButton(onPressed: salvar, child: Text('Salvar'))
            ],
          ),
        ),
      ),
    );
  }
}

class ListaNome extends StatefulWidget {
  //Atributo com construtor
  String? nome;
  ListaNome({this.nome});

  @override
  _ListaNomeState createState() => _ListaNomeState();
}

class _ListaNomeState extends State<ListaNome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de nomes'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Nome: ${widget.nome}'),
      ),
    );
  }
}
