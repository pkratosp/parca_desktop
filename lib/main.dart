import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parca_desktop/pages.dart';
import 'package:parca_desktop/routes.dart';

import 'package:parca_desktop/theme.dart';

//flutter run -d windows para rodar no windows
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Parça desktop',
      getPages: AppPages.routes,
      theme: tema,
      initialRoute: Routes.HOME,
      debugShowCheckedModeBanner: false,
    );
  }
}
