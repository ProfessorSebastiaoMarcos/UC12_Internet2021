import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

//Api para exemplificar
//https://jsonplaceholder.typicode.com/posts

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeuAppGet(),
    ));

class MeuAppGet extends StatefulWidget {
  @override
  _MeuAppGetState createState() => _MeuAppGetState();
}

class _MeuAppGetState extends State<MeuAppGet> {
  //
  final url = 'https://jsonplaceholder.typicode.com/posts';
  var _postsJson = [];
  //
  void buscaPosts() async {
    //Try para testar a comunicação
    try {
      final response = await get(Uri.parse(url));
      final infoJson = jsonDecode(response.body) as List;
      //
      setState(() {
        _postsJson = infoJson;
      });
    } catch (err) {}
  }

  @override
  Widget build(BuildContext context) {
    //Iniciando a função
    buscaPosts();
    //
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha aplicação Post'),
        backgroundColor: Colors.blueAccent,
      ),
      //
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //
            Expanded(
              child: ListView.builder(
                itemCount: _postsJson.length,
                itemBuilder: (context, indice) {
                  final post = _postsJson[indice];
                  return ListTile(
                    title: Text(
                      'Título: ${post['title']}\n',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.redAccent,
                      ),
                    ),
                    subtitle: Text(
                      'Descrição: ${post['body']}\n',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chat',
            )
          ]),
    );
  }
}
