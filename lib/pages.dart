import 'package:get/get.dart';
import 'package:parca_desktop/routes.dart';

// paginas
import 'package:parca_desktop/pages/HomePage.dart';
import 'package:parca_desktop/pages/PagBoletoPage.dart';
import 'package:parca_desktop/pages/RecargaCelularPage.dart';

//pixfacil
import 'package:parca_desktop/pages/PixFacilFotoCartaoPage.dart';
import 'package:parca_desktop/pages/PixFacilFotoRostoPage.dart';
import 'package:parca_desktop/pages/PixFacilPage.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.pagamentoBoleto, page: () => PagBoletoPage()),
    GetPage(name: Routes.recargaCelular, page: () => RecargaCelularPage()),

    //pixfacil
    GetPage(name: Routes.pixfacilFotoRosto, page: () => PixFacilFotoRostoPage()),
    GetPage(name: Routes.pixfacilFotoCartao, page: () => PixFacilFotoCartaoPage()),
    GetPage(name: Routes.pixfacil, page: ()=> PixFacilPage()),
  ];
}