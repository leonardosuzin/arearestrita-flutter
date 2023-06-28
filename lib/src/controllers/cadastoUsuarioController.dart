import 'package:arearestrita/helpers/db.dart';
import 'package:arearestrita/models/usuario.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroUsuarioController extends GetxController {
  realizaCadastroUsuario(
      String nome,
      String dataNascimento,
      String cidade,
      String universidade,
      String registroAcademico,
      String senha,
      BuildContext context) async {
    // final usuario = await DataBaseHelper.instance.getUsuario(nome, senha);

    Usuario novoUsuario = Usuario(
      nome: nome,
      dataNascimento: dataNascimento,
      cidade: cidade,
      universidade: universidade,
      registroAcademico: registroAcademico,
      senha: senha,
    );

    int resultado = await DataBaseHelper.instance.cadastrarUsuario(novoUsuario);
    if (resultado != 0) {
      if (kDebugMode) {
        print('Usuário cadastrado com sucesso!');
      }

      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      if (kDebugMode) {
        print('Falha ao cadastrar usuário.');
      }
    }
  }
}
