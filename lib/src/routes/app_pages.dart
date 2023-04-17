import 'package:arearestrita/src/routes/app_routes.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:arearestrita/src/ui/pages/login_page.dart';
import 'package:arearestrita/src/ui/pages/cadastro_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.initial, page: () => LoginPage())
  ];
}
