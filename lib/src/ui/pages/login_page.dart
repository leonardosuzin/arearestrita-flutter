import 'package:flutter/material.dart';
import 'package:arearestrita/constants.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:arearestrita/src/ui/pages/cadastro_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GuardApp'),
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
                Container(
                  width: 500,
                  child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Informe seu usuário',
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                  width: 500,
                  child: TextField(
                  style: TextStyle(color: Colors.black),
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Informe sua senha',
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  obscureText: true,
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(                  
                  child: Text(
                    'Acessar',
                    style: const TextStyle(color: Colors.white)
                    ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                ),
                /*
                SizedBox(height: 24.0),
                ElevatedButton(                  
                  child: Text(
                    'Cadastre-se',
                    style: const TextStyle(color: Colors.white)
                    ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroPage()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                ),
                */
              ],
            ),
          ),
        ),
      ),
     ),
    );
  }
}