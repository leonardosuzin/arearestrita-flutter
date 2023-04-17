import 'package:flutter/material.dart';
import 'package:arearestrita/constants.dart';

class SalasPage extends StatefulWidget {
  @override
  SalasPageState createState() => SalasPageState();
}

class SalasPageState extends State<SalasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salas'),
        centerTitle: true,
        backgroundColor: textColorPrimary,                
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Sala C203 - AS34C'),
              subtitle: Text('18:40 - 20:20'),
              textColor: Colors.green,
              iconColor: Colors.green,
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Sala C203 - AS35A'),
              subtitle: Text('20:20 - 22:10'),
              textColor: Colors.red,
              iconColor: Colors.red,
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}