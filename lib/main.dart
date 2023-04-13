import 'package:arearestrita/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const AreaRestrita());
}

class AreaRestrita extends StatelessWidget {
  const AreaRestrita({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Controle de Acesso',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: "/",
    );
  }
}
