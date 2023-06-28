import 'package:arearestrita/src/controllers/perfilController.dart';
import 'package:arearestrita/src/ui/pages/cadastro_depto.dart';
import 'package:arearestrita/src/ui/pages/cadastro_page.dart';
import 'package:arearestrita/src/ui/pages/cadastro_salas.dart';
import 'package:flutter/material.dart';
import 'package:arearestrita/constants.dart';
import 'package:get/get.dart';
import 'cadastro_areas.dart';

class UsuariosListPage extends StatefulWidget {
  @override
  _UsuariosListPageState createState() => _UsuariosListPageState();
}

class _UsuariosListPageState extends State<UsuariosListPage> {
  final controller = Get.put(PerfilController());
  var userList = [];

  @override
  void initState() {
    super.initState();
    controller.getUserList().then((_) {
      setState(() {
        userList = controller.users;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
        centerTitle: true,
        backgroundColor: textColorPrimary,
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          var user = userList[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(user['firstName'] + ' ' + user['lastName']),
            onTap: () {
              if (user['firstName'] == 'Sara') {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Presenças'),
                    content: const Text(
                        'Aluno: Sara Andersen. \nSala: C203. \nMateria: AS35C - Programação de Dispositivos Móveis. \nHorário Inicio: 18:40 \nHorário Fim: 20:20 \nPRESENÇA CONFIRMADA ✓'),
                    actions: [
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Presenças'),
                    content: Text('Aluno: ' +
                        user['firstName'] +
                        ' ' +
                        user['lastName'] +
                        ' ' +
                        '\nNão houve registro de presença'),
                    actions: [
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
