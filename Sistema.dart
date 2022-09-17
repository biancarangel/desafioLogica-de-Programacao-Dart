import 'package:Empresa/Empresa.dart' as Empresa;

class Sistema {
  List<Empresa> empresas = [];

  void cadastrarEmpresa(Empresa empresa) {
    empresas.add(empresa);
  }

  Empresa buscarEmpresaCNPJ (String cnpj) {
    for (int i = 0; i <= empresas.length; i++){
      if (empresas[i].cnpj == cnpj){
        return empresas[i];
      }
    }
  }

  Empresa buscarEmpresaSocio (String dado){
    for (int i = 0; i <= empresas.length; i++){
      if (empresas[i].socio.cpf == dado || empresas[i].socio.cnpj == dado){
        return empresas[i];
      }
    }
  }

  void listarEmpresas (List empresas) {
    empresas.sort();
    for (int i = 0; i <= empresas.length; i++){
      print(empresas[i]);
    }
  }

  bool excluirEmpresa(Empresa empresa) {
    for (int i = 0; i <= empresas.length; i++){
      if (empresas[i] == empresa){
        empresas.remove(empresas[i]);
        return 1;
      }
    }
    return 0;
  }
}
