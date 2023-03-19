import 'contaCorrente.dart';
import 'banco.dart';

void main() {
  // Criação de contas correntes
  ContaCorrente conta1 = ContaComum("Alysson", 1234, 1000.0);
  ContaCorrente conta2 = ContaEspecial("Bia", 5678, 2000.0);

  // Criação do banco e adição das contas
  Banco banco = Banco();
  banco.adicionarConta(conta1);
  banco.adicionarConta(conta2);

  // Transferência de valores entre contas
  try {
    banco.transferencia(conta1, conta2, 500.0);
    print("Transferência realizada com sucesso!");
  } catch (e) {
    print("Erro ao realizar transferência: ${e.toString()}");
  }

  // Verificação de conta no banco
  ContaCorrente conta3 = ContaComum("Breno", 9012, 3000.0);
  if (banco.verifica(conta3)) {
    print("Conta encontrada no banco!");
  } else {
    print("Conta não encontrada no banco!");
  }

  // Tentativa de sacar um valor maior do que o saldo disponível
  try {
    conta1.sacar(1500.0);
  } catch (e) {
    print("Erro ao sacar: ${e.toString()}");
  }

  // Tentativa de depositar um valor negativo
  try {
    conta2.depositar(-100.0);
  } catch (e) {
    print("Erro ao depositar: ${e.toString()}");
  }
}





