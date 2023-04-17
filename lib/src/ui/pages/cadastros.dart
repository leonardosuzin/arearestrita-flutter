import 'package:arearestrita/src/ui/pages/cadastro_depto.dart';
import 'package:arearestrita/src/ui/pages/cadastro_page.dart';
import 'package:arearestrita/src/ui/pages/cadastro_salas.dart';
import 'package:flutter/material.dart';
import 'package:arearestrita/constants.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'cadastro_areas.dart';


class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Opções'),
        centerTitle: true,
        backgroundColor: textColorPrimary,                
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Usuários'),
              onTap: () {
                  Get.to(CadastroPage());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.apartment),
              title: Text('Áreas'),
              onTap: () {
                  Get.to(CadastroAreas());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.room),
              title: Text('Salas'),
              onTap: () {
                  Get.to(CadastroSalas());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Grupos/Departamentos'),
              onTap: () {
                  Get.to(CadastroDepto());
              },
            ),
          ],
        ),
      ),
    );
  }
}