import 'model/veiculo.dart';

void main() {
  var camaro = new Veiculo(50);

  while (!camaro.limiteVelocidade()) {
    print('Acelerando o camaro: ${camaro.acelerar()}Km/h');
  }

  //Saída
  print('O Camaro chegou a ${camaro.velocidade}Km/h');

  while (!camaro.parar()) {
    print('Freando o camaro: ${camaro.frear()}Km/h');
  }

  camaro.velocidade = 0;
  print('O camarado parou a : ${camaro.velocidade}Km/h');
}
