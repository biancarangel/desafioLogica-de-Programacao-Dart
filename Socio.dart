class Socio {
  String? logradouro;
  int? numero;
  String? complemento;
  String? bairro;
  String? estado;
  String? cep;

  Socio (this.logradouro,this.numero,this.complemento, this.bairro, this.estado, this.cep);
}

class PessoaJuridica extends Socio {
  String? razaoSocial;
  String? nomeFantasia;
  String? cnpj;

  PessoaJuridica(this.razaoSocila,this.nomeFantasia,this.cnpj): super(this.logradouro,this.numero,this.complemento, this.bairro, this.estado, this.cep);
}

class PessoaFisica extends Socio {
  String? nome;
  String? cpf;

  PessoaFisica(this.nome,this.cpf): super(this.logradouro,this.numero,this.complemento, this.bairro, this.estado, this.cep);
}
