import 'package:flutter/material.dart';

class Perfil2Page extends StatefulWidget {
  @override
  Perfil2PageState createState() => Perfil2PageState();
}

class Perfil2PageState extends State<Perfil2Page> {
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
                children: const [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/icons-user.png"),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Nome do Usuário',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Registro Acadêmico:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
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
