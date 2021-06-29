/**O objeto Map é um par simples de chave / valor. 
 * Chaves e valores em um mapa podem ser de qualquer tipo. 
 * Um mapa é uma coleção dinâmica. Em outras palavras, 
 * o Maps pode aumentar e diminuir em tempo de execução. 
 * Sua construção pode ser:
 * literal: var mapa = {chave, valor}
 * Construtor: var objeto = new Map()
 * Ou Map<tipo, tipo> objeto = new Map()*/

void main() {
  //Mapa para criar um objeto tipo Map()
  Map mapa = Map();
//Chave --> valor

  mapa['chave'] = 10;
  mapa['chave2'] = 40;
  mapa['chave3'] = 50;
  mapa['chave4'] = 60;

  //por inferência
  var mapa2 = {
    'chave1': 'João',
    'chave2': 'Maria',
    'chave3': 'José',
    'chave4': 'Pedro',
  }; //chaves indicam Mapas

  //Definindo a chave e o valor na criação do objeto
  Map<String, String> estados = new Map();

  estados['MG'] = 'Minas Gerais';
  estados['SP'] = 'São Paulo';
  estados['RJ'] = 'Rio de Janeiro';
  estados['RS'] = 'Rio Grande do Sul';

  //Saídas
  print('MAPA----------------------------------------------');
  print('Mapa 1: $mapa');
  print('Mapa 2: $mapa2');
  print('Mapa Estados: $estados');
  print('--------------------------------------------------');

  //Imprimindo as chaves do Mapa 1: keys e values
  print('Chaves do Mapa 1: ${mapa.keys}');
  print('Chaves do Mapa 1: ${mapa.values}');
  print('--------------------------------------------------');

  //Verificalçao de existência de chave
  bool temChave = mapa.containsKey('chave');
  print('Existe uma chave? $temChave');
  bool temValor = mapa.containsValue('John');
  print('Existe yma valor? $temValor');

  print('Length--------------------------------------------');
  print('Quantidade de valores no mapa: ${mapa.length}');
  print('Quantidade de valores no mapa2: ${mapa2.length}');
  print('Quantidade de valores no mapa estados: ${estados.length}');
  print('-------------------------------------------------');

  mapa.forEach((key, value) => print('$key, $value'));
  mapa2.forEach((key, value) => print('$key, $value'));
  //estados.forEach((key, value) => print('$key, $value'));
  estados.forEach((key, value) {
    print('Sigla: $key  | Estado: $value');
  });
  print('--------------------------------------------------');

  //Método para utilizar em Mapas: AddAll(), Remove(), clear(), isEmpty(), InNotEmpty()
  Map<int, String> disciplina = new Map();

  //Método addAll() - Adiciona
  disciplina.addAll({
    1: 'Matemática',
    2: 'História',
    3: 'Português',
    4: 'Geografia',
    5: 'Ciências'
  });

  print('----------------------------------------------------');
  print('Mapa Disciplinas: $disciplina');

  //Remobendo informação remove()
  disciplina.remove(1);
  print('----------------------------------------------------');
  print('Mapa Disciplinas: $disciplina');

  //Limpando o Map() com clear()
  disciplina.clear();
  print('----------------------------------------------------');
  print('Mapa Disciplinas: $disciplina');
  print('----------------------------------------------------');

  //Verificando se o mapa está vazio
  bool resposta1 = disciplina.isEmpty;
  bool resposta2 = disciplina.isNotEmpty;
  print('O mapa está vazio? $resposta1');
  print('O mapa não está vazio? $resposta2');
  print('----------------------------------------------------');

  //Criando uma lista com um Map
  //Lista de Mapa
  var mapaAlunos = [
    {'nome': 'John', 'nota': 8.0},
    {'nome': 'Jane', 'nota': 7.0},
    {'nome': 'Carol', 'nota': 5.0},
    {'nome': 'Mike', 'nota': 10.0}
  ];

  //Pegar as notas
  var notas = mapaAlunos
      .map((nota) => nota['nota']) //Cria uma lista de notas
      //Casting
      .map((nota) => (nota as double).roundToDouble())
      //Usar um critério
      .where((nota) => nota > 0); //Filtragem

  //Somar as notas da lista filtrada pelo where
  var total = notas.reduce((nota, elemento) => nota + elemento);

  //Calcular a média
  var media = total / notas.length;

  //Saída
  print('map() where() reduce()--------------------------------');
  print('Soma das notas: $total');
  //Média com duas casas decimais toStringAsFixed
  print('Média: ${media.toStringAsFixed(2)}');
  print('------------------------------------------------------');

  //Menos efeito na utilização do for in valuess, keys, entries
  var novoArray = [];
  for (var estado in estados.values) {
    novoArray.add(estado);
  }
  print(novoArray);
}
