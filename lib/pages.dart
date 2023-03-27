import 'package:get/get.dart';
import 'package:parca_desktop/pages/EmprestimosPage.dart';
import 'package:parca_desktop/pages/ParcaBank.dart';
import 'package:parca_desktop/pages/SegurosPage.dart';
import 'package:parca_desktop/routes.dart';

// paginas
import 'package:parca_desktop/pages/HomePage.dart';
import 'package:parca_desktop/pages/PagBoletoPage.dart';
import 'package:parca_desktop/pages/RecargaCelularPage.dart';
import 'package:parca_desktop/pages/ConsultaCPFCNPJPage.dart';

//pixfacil
import 'package:parca_desktop/pages/PixFacilFotoCartaoPage.dart';
import 'package:parca_desktop/pages/PixFacilFotoRostoPage.dart';
import 'package:parca_desktop/pages/PixFacilPage.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.pagamentoBoleto, page: () => PagBoletoPage()),
    GetPage(name: Routes.recargaCelular, page: () => RecargaCelularPage()),
    GetPage(name: Routes.consultaCPFCNPJ, page: () => ConsultaCPFCNPJPage()),
    GetPage(name: Routes.emprestimo, page: () => EmprestimoPage()),
    GetPage(name: Routes.parcaBank, page: () => ParcaBankPage()),
    GetPage(name: Routes.seguros, page: () => SeguroPage()),

    //pixfacil
    GetPage(name: Routes.pixfacilFotoRosto, page: () => PixFacilFotoRostoPage()),
    GetPage(name: Routes.pixfacilFotoCartao, page: () => PixFacilFotoCartaoPage()),
    GetPage(name: Routes.pixfacil, page: ()=> PixFacilPage()),
  ];
}