import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  //Lógica
  var _imagemApp = AssetImage('images/padrao.png');
  var _mensagem = 'Escolha uma opcao abaixo';

  //Método para sortear
  void _opcaoSelecionada(String escolhaUsuario) {
    print('Opção selecionada: ' + escolhaUsuario);

    //Dados para o computador
    var opcoes = ['pedra', 'papel', 'tesoura'];
    //esolhas aleatórias
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    print('Esolha do App: ' + escolhaApp);
    print('Escolha do usuário: ' + escolhaUsuario);

    //Exibindo a imagem
    switch (escolhaApp) {
      case 'pedra':
        setState(() {
          this._imagemApp = AssetImage('images/pedra.png');
        });
        break;
      case 'papel':
        setState(() {
          this._imagemApp = AssetImage('images/papel.png');
        });
        break;
      case 'tesoura':
        setState(() {
          this._imagemApp = AssetImage('images/tesoura.png');
        });
        break;
      default:
    }
    //Validação
    //usuário vencendo
    if ((escolhaUsuario == 'pedra' && escolhaApp == 'tesoura') ||
        (escolhaUsuario == 'tesoura' && escolhaApp == 'papel') ||
        (escolhaUsuario == 'papel' && escolhaApp == 'pedra')) {
      setState(() {
        this._mensagem = 'Você Venceu!!!';
      });
      //App vencendo
    } else if ((escolhaApp == 'pedra' && escolhaUsuario == 'tesoura') ||
        (escolhaApp == 'tesoura' && escolhaUsuario == 'papel') ||
        (escolhaApp == 'papel' && escolhaUsuario == 'pedra')) {
          setState(() {
            this._mensagem = 'Você Perdeu!!!';
          });
    } else {
      this._mensagem = 'Empatou';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokenpo'),
      ),
      body: Column(
        //Alinhado a coluna
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Titulo texto
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              'Escolha do App',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          //Widget imagem
          Image(image: this._imagemApp),

          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          //Criando uma Row para as 3 imagens
          Row(
            //alinhando a row
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () => _opcaoSelecionada('pedra'),
                  child: Image.asset(
                    'images/pedra.png',
                    height: 95,
                  )),
              GestureDetector(
                  onTap: () => _opcaoSelecionada('papel'),
                  child: Image.asset(
                    'images/papel.png',                    
                    height: 95,
                  )),
              GestureDetector(
                  onTap: () => _opcaoSelecionada('tesoura'),
                  child: Image.asset(
                    'images/tesoura.png',
                    height: 95,
                  )),
            ],
          )
          //Título texto
          //imagens
        ],
      ),
    );
  }
}
