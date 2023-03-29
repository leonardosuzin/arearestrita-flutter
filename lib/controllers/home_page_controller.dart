import '../models/pessoa.dart';

class home_page_controller {
  List<Pessoa> tabela;

  home_page_controller(){
    tabela = [
      Pessoa(
        idPessoa: '01',
        nome: 'Admin',
        senha: 'admin',
      ),
      Pessoa(
        idPessoa: '02',
        nome: 'Augusto',
        senha: 'augusto',
      ),
      Pessoa(
        idPessoa: '03',
        nome: 'Joao',
        senha: 'joao',
      ),
      Pessoa(
        idPessoa: '04',
        nome: 'Leo',
        senha: 'leo',
      )
    ]
  }
}
