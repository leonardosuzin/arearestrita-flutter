import 'package:flutter/material.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:arearestrita/constants.dart';

class CadastroSalas extends StatefulWidget {
  @override
  _CadastroSalasState createState() => _CadastroSalasState();
}

class _CadastroSalasState extends State<CadastroSalas> {
  TextEditingController _codSala = TextEditingController();
  TextEditingController _nomeSala = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GuardApp Cadastro'),
        centerTitle: true,
        backgroundColor: textColorPrimary,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logoShield.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 32.0),
                  Container(
                    width: 500,
                    child: TextField(
                      controller: _codSala,
                      decoration: InputDecoration(
                        labelText: 'Código da Sala',
                        filled: true,
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: 500,
                    child: TextField(
                      controller: _nomeSala,
                      decoration: InputDecoration(
                        labelText: 'Nome da Sala',
                        filled: true,
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  ElevatedButton(
                    child: Text(
                      'Cadastrar Sala',
                      style: const TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
