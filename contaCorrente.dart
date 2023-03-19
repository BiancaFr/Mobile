abstract class ContaCorrente {
  String titular;
  int numero;
  double saldo;

  ContaCorrente(this.titular, this.numero, this.saldo);

  void depositar(double valor) {
    if (valor <= 0) {
      throw Exception("O valor a ser depositado deve ser maior que zero.");
    }
    saldo += valor;
  }

  bool sacar(double valor) {
    if (valor <= 0) {
      throw Exception("O valor a ser sacado deve ser maior que zero.");
    }
    if (saldo < valor) {
      throw Exception("Saldo insuficiente.");
    }
    saldo -= valor;
    return true;
  }

  double get limite;
}

class ContaComum extends ContaCorrente {
  ContaComum(String titular, int numero, double saldo)
      : super(titular, numero, saldo);

  @override
  double get limite => 500.0;
}

class ContaEspecial extends ContaCorrente {
  ContaEspecial(String titular, int numero, double saldo)
      : super(titular, numero, saldo);

  @override
  double get limite => 1000.0;
}
