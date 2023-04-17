import 'package:arearestrita/src/ui/pages/horarios.dart';
import 'package:arearestrita/src/ui/pages/salas.dart';
import 'package:flutter/material.dart';
import 'package:arearestrita/constants.dart';
import 'package:get/get.dart';

class PerfilPage extends StatefulWidget {
  @override
  PerfilPageState createState() => PerfilPageState();
}

class PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
        backgroundColor: textColorPrimary,                
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.room),
              title: Text('Salas'),
              onTap: () {
                  Get.to(SalasPage());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock_clock),
              title: Text('Horários'),
              onTap: () {
                  Get.to(HorariosPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}