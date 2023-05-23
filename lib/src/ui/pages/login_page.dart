import 'package:arearestrita/src/controllers/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:arearestrita/constants.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:arearestrita/src/ui/pages/cadastro_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// realizaLogin() async {

// }

class _LoginPageState extends State<LoginPage> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GuardApp'),
        centerTitle: true,
        backgroundColor: textColorPrimary,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logoShield.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 500,
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      controller: _nomeController,
                      decoration: const InputDecoration(
                        labelText: 'Informe seu usuário',
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    width: 500,
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Informe sua senha',
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const HomePage()));

                      controller.realizaLogin(_nomeController.value.text,
                          _passwordController.value.text, context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: const Text('Acessar',
                        style: TextStyle(color: Colors.white)),
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
