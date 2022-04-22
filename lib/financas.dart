import 'dart:io';
import 'package:bank/cliente.dart';
import 'package:bank/conta.dart';

import 'banco.dart';

class Financas {
  late Banco banco;
  Financas(this.banco);

  ///Cliente's methods
  Cliente pedirCliente() {
    print("INCLUIR CLIENTE");
    print("Informe o nome do Cliente: ");
    String nome = getInputString();
    print("Informe o CPF do Cliente: ");
    String cpf = getInputString();
    print("Seu nome digitado: $nome , seu cpf digitado: $cpf");
    return Cliente(nome, cpf);
  }

  bool haveCliente(Cliente searchCliente) {
    for (var cliente in banco.clientes) {
      if (cliente.cpf == searchCliente.cpf) {
        return true;
      }
    }

    return false;
  }

  void listarClientes() {
    for (var cliente in banco.clientes) {
      print(cliente);
    }
  }

  Cliente? getClienteByCPF(String cpf) {
    for (var cliente in banco.clientes) {
      if (cliente.cpf == cpf) {
        return cliente;
      }
    }
    return null;
  }

  String pedirCPF() {
    print("Digite o cpf:");
    return getInputString();
  }

  /// Conta's methods
   Conta pedirConta() {
    print("Informe o numero da agencia: ");
    num agencia = getInputNum();
    print("Informe o numero da conta: ");
    num numeroConta = getInputNum();
    return Conta(agencia, numeroConta, Cliente("", ""));
  }

  bool haveConta(Conta conta) {
    for (var contaCadastrada in banco.contas) {
      if (contaCadastrada.numeroConta == conta.numeroConta) {
        return true;
      }
    }
    return false;
  }

  void cadastrarConta(Conta conta, Cliente cliente) {
    conta = adicionarClienteNaConta(conta, cliente);
    banco.contas.add(conta);
  }

  Conta adicionarClienteNaConta(Conta conta, Cliente cliente) {
    conta.cliente = cliente;
    return conta;
  }

  void cadastrarCliente(Cliente cliente) {
    banco.clientes.add(cliente);
  }

  void listarContas() {
    for (var contaCadastrada in banco.contas) {
      print(contaCadastrada);
    }
  }

  void realizarDeposito(Conta conta, num valor) {
    for (var contaCadastrada in banco.contas) {
      if (contaCadastrada.numeroConta == conta.numeroConta) {
        contaCadastrada.saldoConta += valor;
      }
    }
  }

  bool canRealizarSaque(Conta conta, num valor) {
    for (var contaCadastrada in banco.contas) {
      if (contaCadastrada.numeroConta == conta.numeroConta) {
        return contaCadastrada.saldoConta >= valor;
      }
    }
    return false;
  }

  void realizarSaque(Conta conta, num valor) {
    for (var contaCadastrada in banco.contas) {
      if (contaCadastrada.numeroConta == conta.numeroConta) {
        contaCadastrada.saldoConta -= valor;
        return;
      }
    }
  }

  num pedirValorDeposito() {
    print("Digite o valor que deseja depositar: ");
    String? input = stdin.readLineSync();
    return num.parse(input!);
  }

  void mostrarSaldoDisponivelParaSaque(num saldo) {
    print("Saldo disponivel para saque: $saldo");
  }

  num pedirValorSaque() {
    print("Digite o valor que deseja sacar: ");
    return getInputNum();
  }

  /// UTILS
  String getInputString() {
    String input = stdin.readLineSync()!;
    return input;
  }

  num getInputNum() {
    String? input = stdin.readLineSync();
    return num.parse(input!);
  }
}
