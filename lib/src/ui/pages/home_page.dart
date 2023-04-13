import 'package:arearestrita/constants.dart';
import 'package:flutter/material.dart' as material3;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // ignore: prefer_const_constructors
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Controle de Acesso'),
//       ),
//       );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Lista de widgets para exibir nas telas de navegação
  static final List<Widget> _widgetOptions = <Widget>[
    // Página Inicial

    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Imagem centralizada no topo
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
                  image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: const AssetImage("assets/logoAppGuard2.jpg"))               
                ),              
          ),
          // Image.network(
          //   'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/9/9b/S.H.I.E.L.D._logo_NEW.png/revision/latest?cb=20190422151215',
          //   height: 150,
          // ),
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
                      Get.toNamed("/");
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

                // Card 2 - Câmeras
                Card(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.camera_alt, size: 50),
                        SizedBox(height: 10),
                        Text('Câmeras'),
                      ],
                    ),
                  ),
                ),
                // Card 3 - Controle de Acesso
                Card(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.security, size: 50),
                        SizedBox(height: 10),
                        Text('Controle de Acesso'),
                      ],
                    ),
                  ),
                ),
                // Card 4 - Pânico
                Card(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.warning, size: 50),
                        SizedBox(height: 10),
                        Text('Pânico'),
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
    // Pesquisar
    const Text(
      'Pesquisar',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    // Perfil
    const Text(
      'Perfil',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

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
            icon: Icon(Icons.search),
            label: 'Pesquisar',
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
