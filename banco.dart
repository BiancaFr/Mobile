import 'contaCorrente.dart';
class Banco {
  List<ContaCorrente> contas;

  Banco() : contas = [];

  void adicionarConta(ContaCorrente conta) {
    contas.add(conta);
  }
   // código da classe Banco que armazena várias contas corrente, comuns ou especiais

  void transferencia(ContaCorrente origem, ContaCorrente destino, double valor) {
    try {
      if (origem.saldo < valor) {
        throw Exception("Saldo insuficiente.");
      }
      origem.sacar(valor);
      destino.depositar(valor);
    } catch (e) {
      print(e.toString());
    }
  }
  // código da classe Banco que armazena várias contas corrente, comuns ou especiais

  bool verifica(ContaCorrente conta) {
    try {
      if (contas.contains(conta)) {
        return true;
      } else {
        throw Exception("Conta não encontrada.");
      }
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
