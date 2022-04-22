import 'package:bank/banco.dart';
import 'dart:io';

void main(List<String> arguments) {
  bool loop = true;
  Banco b = Banco("Santander");
  print("Bem vindo ao banco $b");
  while (loop) {
    print("----------------------------------------");
    print("1 Incluir Cliente");
    print("2 Incluir Conta");
    print("3 Listar Clientes");
    print("4 Listar Contas");
    print("5 Realizar Deposito");
    print("6 Realizar Saque");
    print("9 SAIR");
    print("----------------------------------------");
    print("Digite a ação que quer rodar: 1 - 6. 9 para finalizar a aplicação: ");
    String? choice = stdin.readLineSync();
    switch (choice) {
      case "1":
        b.adicionarCliente();
        break;
      case "2":
        b.adicionarConta();
        break;
      case "3":
        b.listarClientes();
        break;
      case "4":
        b.listarContas();
        break;
      case "5":
        b.realizarDeposito();
        break;
      case "6":
        b.realizarSaque();
        break;
      case "9":
        print("SAINDO DA APLICAÇÃO");
        loop = false;
        break;
      default:
        print("Nenhuma opção válida");
    }
  }
}
