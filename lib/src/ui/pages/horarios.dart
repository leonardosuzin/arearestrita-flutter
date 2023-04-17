import 'package:flutter/material.dart';
import 'package:arearestrita/constants.dart';


class HorariosPage extends StatefulWidget {
  @override
  HorariosPageState createState() => HorariosPageState();
}

class HorariosPageState extends State<HorariosPage> {
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
              title: Text('Aula 1 - K102 AS36H'),
              subtitle: Text('9:00 - 10:50'),
              textColor: Colors.red,
              iconColor: Colors.red,
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Aula 2 - C203 AS35H'),
              subtitle: Text('20:20 - 22:10'),
              textColor: Colors.green,
              iconColor: Colors.green,  
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Aula 3 - C203 AS34C'),
              subtitle: Text('20:20 - 22:10'),
              textColor: Colors.red,
              iconColor: Colors.red,
              onTap: () {
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.qr_code_2),
              title: Text('Aula 4 - L102 AS36A'),
              subtitle: Text('22:10 - 23:00'),
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