
//Função nomeada: Exemplo 2
void main() {
  //Chamando uma função
  avaliarFilme('Matrix', categoria: 'Ficção', nota: 10);
}

void avaliarFilme(String nomeFilme, {categoria, nota}) {

  //Verificação de Nulo
  var n = nota ?? 0;
  var cat = categoria ?? 'Sem categoria';

  //Imprimir os valores
  print('Nome do Filme: $nomeFilme');
  print('Categoria: $cat');
  print('Nota: $n');
}
