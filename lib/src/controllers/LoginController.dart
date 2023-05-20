import 'package:arearestrita/helpers/db.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  realizaLogin(String nome, String senha, BuildContext context) async {
    final usuario = await DataBaseHelper.instance.getUsuario(nome, senha);

    if (usuario != null) {
      print('Usuario existe');

      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      print('Usuario NÃO existe');
    }
  }
}
