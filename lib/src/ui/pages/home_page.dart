import 'package:arearestrita/constants.dart';
import 'package:arearestrita/src/ui/pages/perfil2.dart';
import 'package:arearestrita/src/ui/pages/relatorios.dart';
import 'package:arearestrita/src/ui/pages/usuarios_page.dart';
import 'package:flutter/material.dart' as material3;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:arearestrita/src/ui/pages/cadastros.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Lista de widgets para exibir nas telas de navegação
  static final List<Widget> _widgetOptions = <Widget>[];

  Future<String> _scanQRCode() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
      '#FF0000',
      'Cancelar',
      true,
      ScanMode.QR,
    );
    return barcodeScanRes;
  }

  @override
  void initState() {
    _widgetOptions.addAll([
      // Página Inicial
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagem centralizada no topo
            Container(
              margin: const EdgeInsets.all(40),
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/logoAppGuard2.jpg"),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Texto "Olá usuário"
            const Text(
              'Olá usuário',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Grid com 4 cards
            material3.SizedBox(
              height: 500,
              width: 500,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  // Card 1 - Cadastro
                  Card(
                    child: InkWell(
                      onTap: () {
                        Get.to(ListViewPage());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.file_copy, size: 50),
                          SizedBox(height: 10),
                          Text('Cadastros'),
                        ],
                      ),
                    ),
                  ),

                  // Card 2 - qrCode
                  Card(
                    child: InkWell(
                      onTap: () {
                        _scanQRCode().then((result) {
                          print(result);
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: const Text('QR Code'),
                              content: Text(result),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.qr_code, size: 50),
                          SizedBox(height: 10),
                          Text('QR Code'),
                        ],
                      ),
                    ),
                  ),

                  // Card 3 - Controle de Acesso
                  Card(
                    child: InkWell(
                      onTap: () {
                        Get.to(RelatoriosPage());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.security, size: 50),
                          SizedBox(height: 10),
                          Text('Acessos'),
                        ],
                      ),
                    ),
                  ),

                  // Card 4 - Usuarios
                  Card(
                    child: InkWell(
                      onTap: () {
                        Get.to(UsuariosListPage());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.woman, size: 50),
                          SizedBox(height: 10),
                          Text('Usuários'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // qrcode
      const Text(
        'leitor',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
      // Perfil
      Perfil2Page(),
    ]);

    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: textColorPrimary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('GuardApp'),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: material3.BottomNavigationBar(
        items: const <material3.BottomNavigationBarItem>[
          material3.BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Início',
          ),
          material3.BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QR Code',
          ),
          material3.BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: material3.BottomNavigationBarType.fixed,
        backgroundColor: material3.Colors.white,
        elevation: 8,
        selectedLabelStyle: const material3.TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const material3.TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        selectedItemColor: material3.Colors.red,
        unselectedItemColor: material3.Colors.grey,
      ),
    );
  }
}
