import 'dart:io';

import 'package:arearestrita/helpers/http_overrides.dart';
import 'package:arearestrita/src/controllers/perfilController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Perfil2Page extends StatefulWidget {
  @override
  Perfil2PageState createState() => Perfil2PageState();
}

class Perfil2PageState extends State<Perfil2Page> {
  final controller = Get.put(PerfilController());
  String firstName = '';
  String lastName = '';
  String profilePicture = '';

  @override
  void initState() {
    super.initState();
    HttpOverrides.global = MyHttpOverrides();

    controller.getUserList().then((_) {
      setState(() {
        firstName = controller.objetoUsuarioPrincipal['firstName'];
        lastName = controller.objetoUsuarioPrincipal['lastName'];
        profilePicture = controller.objetoUsuarioPrincipal['picture'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.lightBlue[100],
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: profilePicture != ''
                        ? NetworkImage(profilePicture) as ImageProvider
                        : const AssetImage("assets/icons-user.png"),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    ' $firstName $lastName ',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Registro Acadêmico:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    '1999494',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Data de Nascimento:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      '02/01/1997',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Nome da Universidade:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Universidade Tecnológica Federal do Paraná',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
