import 'package:flutter/material.dart';
import 'package:arearestrita/constants.dart';

class RelatoriosPage extends StatefulWidget {
  @override
  RelatoriosPageState createState() => RelatoriosPageState();
}

class RelatoriosPageState extends State<RelatoriosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horarios'),
        centerTitle: true,
        backgroundColor: textColorPrimary,                
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Biblioteca UTFPR'),
              subtitle: Text('9:00 - 10:00'),
              textColor: Colors.lightBlue,
              iconColor: Colors.lightBlue,
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Bloco L - Sala 103'),
              subtitle: Text('15:15 - 16:20'),
              textColor: Colors.lightBlue,
              iconColor: Colors.lightBlue,  
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Bloco K - Sala 104'),
              subtitle: Text('20:20 - 20:30'),
              textColor: Colors.red,
              iconColor: Colors.red,
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Bloco C - Sala 203'),
              subtitle: Text('22:10 - 23:00'),
              textColor: Colors.lightBlue,
              iconColor: Colors.lightBlue,
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}