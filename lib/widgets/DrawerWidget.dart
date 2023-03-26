import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parca_desktop/routes.dart'; // rotas

Widget DrawerMenu() {
  return Drawer(
      child: ListView(
        children: [

          ListTile(
            title: Text('Minha Home'),
            onTap: () async {
              Get.toNamed(Routes.HOME);
            },
          ),

          ListTile(
            title: Text('pagamento de boleto'),
            onTap: () async {
              Get.toNamed(Routes.pagamentoBoleto);
            },
          ),

          ListTile(
            title: Text('recarga de celular'),
            onTap: () async {
              Get.toNamed(Routes.recargaCelular);
            },
          ),

          ListTile(
            title: Text('PixFacil'),
            onTap: () async {
              Get.toNamed(Routes.pixfacilFotoRosto);
            },
          )

        ],
      )
  );
}