class Cliente {
  late String nome;
  late String cpf;

  Cliente(this.nome, this.cpf);


  @override
  String toString() {
    return '$nome, $cpf';
  }
}
