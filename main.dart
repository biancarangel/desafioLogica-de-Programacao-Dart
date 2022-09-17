import 'dart:io';
import 'package:Empresa/Empresa.dart' as Empresa;
import 'package:Sitema/Sistema.dart' as Sistema;
import 'package:Socio/Socio.dart' as Socio;

void main() {
  Sistema sistema = new Sistema();

  print("1 = Cadastrar nova empresa");
  print("2 = Buscar empresa por CNPJ");
  print("3 = Buscar empresa por CNPJ ou CPF do sócio");
  print("4 = Listar empresas em ordem alfabéticas");
  print("5 = Excluir empresa");
  print("6 = Sair");

  int opcao = 0;

  while (opcao != 6){
    opcao = int.parse(stdin.readLineSync()!); 

    if (opcao == 1) {
      Empresa empresa1 = new Empresa();
        
      print("Informe o ID: ");
      int? id = int.parse(stdin.readLineSync()!);
      empresa1.id = id;    

      print("Informe a razão social: ");
      String? razao = String.parse(stdin.readLineSync()!);
      empresa1.razaoSocial = razao; 

      print("Informe o nome fantasia: ");
      String? nome = String.parse(stdin.readLineSync()!);
      empresa1.nomeFantasia = nome; 

      print("Informe o CNPJ: ");
      String? cnpj = String.parse(stdin.readLineSync()!);
      empresa1.cnpj = cnpj; 

      print("Informe o logradouro: ");
      String? logradouro = String.parse(stdin.readLineSync()!);
      empresa1.logradouro = logradouro; 

      print("Informe o número: ");
      int? numero = int.parse(stdin.readLineSync()!);
      empresa1.numero = numero; 

      print("Informe o complemento: ");
      String? complemento = String.parse(stdin.readLineSync()!);
      empresa1.complemento = complemento; 

      print("Informe o bairro: ");
      String? bairro = String.parse(stdin.readLineSync()!);
      empresa1.bairro = bairro; 

      print("Informe o estado: ");
      String? estado = String.parse(stdin.readLineSync()!);
      empresa1.estado = estado; 

      print("Informe o CEP: ");
      String? cep = String.parse(stdin.readLineSync()!);
      empresa1.cep = cep; 

      print("Informe o telefone: ");
      String? telefone = String.parse(stdin.readLineSync()!);
      empresa1.telefone = telefone; 

      final hora = DateTime.now();
      empresa1.horarioCadastro = hora; 
      sistema.cadastrarEmpresa(empresa1);

      
      PessoaFisica socio1 = new PessoaFisica();

      print("Informe o logradouro: ");
      String? logradouro = String.parse(stdin.readLineSync()!);
      socio1.logradouro = logradouro; 

      print("Informe o número: ");
      int? numero = int.parse(stdin.readLineSync()!);
      socio1.numero = numero; 

      print("Informe o complemento: ");
      String? complemento = String.parse(stdin.readLineSync()!);
      socio1.complemento = complemento; 

      print("Informe o bairro: ");
      String? bairro = String.parse(stdin.readLineSync()!);
      socio1.bairro = bairro; 

      print("Informe o estado: ");
      String? estado = String.parse(stdin.readLineSync()!);
      socio1.estado = estado; 

      print("Informe o CEP: ");
      String? cep = String.parse(stdin.readLineSync()!);
      socio1.cep = cep; 

      print("Informe o nome: ");
      String? nome = String.parse(stdin.readLineSync()!);
      socio1.nome = nome; 

      print("Informe o CPF: ");
      String? cpf = String.parse(stdin.readLineSync()!);
      socio1.cep = cpf; 

      empresa1.socio = socio1;
    }
      
    else if (opcao == 2) {
      print("Informe o cnpj da empresa que deseja procurar: ");
      String? cnpj = String.parse(stdin.readLineSync()!);
      sistema.buscarEmpresaCNPJ(cnpj);
    }
      
    else if (opcao == 3) {
      print("Informe o cpf ou cnpj do socio: ");
      String? doc = String.parse(stdin.readLineSync()!);
      sistema.buscarEmpresaSocio(doc);
    }
      
    else if (opcao == 4) {
      sistema.listarEmpresa(empresa1);
    }
      
    else if (opcao == 5) {
      sistema.excluirEmpresa(empresa1);
    }
    
    else if (opcao == 6) {
      break;
    }
  } 
}
