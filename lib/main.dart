import 'package:arearestrita/pages/home_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(AreaRestrita());
}

class AreaRestrita extends StatelessWidget {
  const AreaRestrita({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    var materialApp = MaterialApp(
      title: 'Controle de Acesso',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
    );
    return materialApp;
  }
}
