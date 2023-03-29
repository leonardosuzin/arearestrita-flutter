import 'package:arearestrita/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material3;

Future<void> main() async {
  runApp(const AreaRestrita());
}

// class AreaRestrita extends StatelessWidget {
//   const AreaRestrita({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // ignore: prefer_const_constructors
//     var materialApp = MaterialApp(
//       title: 'Controle de Acesso',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           primarySwatch: Colors.yellow,
//           visualDensity: VisualDensity.adaptivePlatformDensity),
//       home: HomePage(),
//     );
//     return materialApp;
//   }
// }

MaterialColor primarySwatch = const MaterialColor(
  0xFFE60023,
  <int, Color>{
    50: Color(0xFFFFECEC),
    100: Color(0xFFFFCBCB),
    200: Color(0xFFFCA8A8),
    300: Color(0xFFF86F6F),
    400: Color(0xFFF84B4B),
    500: Color(0xFFE60023),
    600: Color(0xFFD8001F),
    700: Color(0xFFC2001A),
    800: Color(0xFFAD0016),
    900: Color(0xFF8F000D),
  },
);

class AreaRestrita extends StatelessWidget {
  const AreaRestrita({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Acesso',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primarySwatch,
      ),
      home: HomePage(),
    );
  }
}
