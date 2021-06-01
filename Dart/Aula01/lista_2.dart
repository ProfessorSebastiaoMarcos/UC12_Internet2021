import '../Aula02/funcao_void.dart';

void main() {
  //Criar uma lista
  var minhaLista = [];

  //Método que inseri valores na lista
  minhaLista.add('Dart');
  minhaLista.add('Java');
  minhaLista.add('Python');
  minhaLista.add('Ruby');
  minhaLista.add('Php');
  minhaLista.add('JavaScript');

  //Remover elemento da lista
  minhaLista.remove('Php');

  //Remover elemento da lista pelo índice
  minhaLista.removeAt(2);

  //Removendo o último elemento da lista
  minhaLista.removeLast();

  //Remover os elementos pelo intervalo
  minhaLista.removeRange(1, minhaLista.length);

  //Verificar o tamanho da minha lista
  int tamanhoLista = minhaLista.length;

  //Saída
  linha();
  print('Minha lista: $minhaLista');
  print('Tamanho da minha lista: $tamanhoLista');
  linha();
}
