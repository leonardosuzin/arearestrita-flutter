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
        print(userList);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuários'),
        centerTitle: true,
        backgroundColor: textColorPrimary,
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          var user = userList[index];
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(user['firstName'] + ' ' + user['lastName']),
            onTap: () {
              // Ação quando um usuário for selecionado
            },
          );
        },
      ),
    );
  }
}
