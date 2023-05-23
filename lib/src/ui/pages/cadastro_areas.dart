import 'package:flutter/material.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:arearestrita/constants.dart';

class CadastroAreas extends StatefulWidget {
  @override
  _CadastroAreasState createState() => _CadastroAreasState();
}

class _CadastroAreasState extends State<CadastroAreas> {
  TextEditingController _nameBloco = TextEditingController();
  TextEditingController _descBloco = TextEditingController();

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
                      controller: _nameBloco,
                      decoration: InputDecoration(
                        labelText: 'Nome do Bloco',
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
                      controller: _descBloco,
                      decoration: InputDecoration(
                        labelText: 'Descrição do Bloco',
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
                      'Cadastrar Bloco',
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
