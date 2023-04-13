import '../../models/pessoa.dart';

class HomePageController {
  List<Pessoa> tabela = [];

  HomePageController() {
    tabela = [
      Pessoa(
        idPessoa: 01,
        nome: 'Admin',
        senha: 'admin',
      ),
      Pessoa(
        idPessoa: 02,
        nome: 'Augusto',
        senha: 'augusto',
      ),
      Pessoa(
        idPessoa: 03,
        nome: 'Joao',
        senha: 'joao',
      ),
      Pessoa(
        idPessoa: 04,
        nome: 'Leo',
        senha: 'leo',
      )
    ];
  }
}
