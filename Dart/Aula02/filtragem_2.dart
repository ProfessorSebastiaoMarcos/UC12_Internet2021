//Melhorando a filtragem de dados
//Agora vamos usar o método Dart para fazer a filtragem
//where()

import 'funcao_void.dart';

void main() {
  //Criando a lista de valores
  var valores = [5.5, 7.0, 6.3, 9.7, 10.0, 3.5];

  //Criar função para pegar os valores
  //A nossa função vai retornar um booleano
  //O método where funciona dessa forma
  bool Function(double) valoresAcimaMedia = (double valor) => valor >= 6;

  //usando o método where
  //De todos os valores pegue somente os acima da média
  var valoresNovos = valores.where(valoresAcimaMedia);

  //Saída
  linha();
  print('Lista original: $valores');
  print('Lista nova: $valoresNovos');
  linha();
}
