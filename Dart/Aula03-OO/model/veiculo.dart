class Veiculo {
  //Declarar meu atributos
  int vMaxima;
  int velocidade;

  Veiculo([this.vMaxima = 200, this.velocidade = 0]);

  int acelerar() {
    if (velocidade + 10 >= vMaxima) {
      velocidade = vMaxima;
    } else {
      velocidade += 10;
    }
    return velocidade;
  }

  int frear() {
    if (velocidade - 10 <= 0) {
      velocidade = 0;
    } else {
      velocidade -= 10;
    }
    return velocidade;
  }

  bool limiteVelocidade() {
    return velocidade == vMaxima;
  }

  bool parar() {
    return velocidade == 0;
  }
}
