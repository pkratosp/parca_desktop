import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parca_desktop/routes.dart';

//widgets
import 'package:parca_desktop/widgets/DrawerWidget.dart';
import 'package:parca_desktop/widgets/AppBarWidget.dart';
import 'package:parca_desktop/widgets/HomeButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Image.asset('assets/logo.png',height: 40,),
        centerTitle: true,
        backgroundColor: Color(0xFF0F3063),
        foregroundColor: Colors.green,
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF0F3063),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          primary: false,
          childAspectRatio: 1 / 1,
          padding: const EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          children: [

            HomeButton(
              title: 'Seguros',
              route: Routes.seguros,
            ),
            HomeButton(
              title: 'Consulta de CPF e CNPJ',
              route: Routes.consultaCPFCNPJ,
            ),
            HomeButton(
              title: 'Recarga de celular',
              route: Routes.recargaCelular,
            ),
            HomeButton(
              title: 'Parça Bank',
              route: Routes.parcaBank,
            ),
            HomeButton(
              title: 'Empréstimos e consórcios',
              route: Routes.emprestimo,
            ),
            HomeButton(
              title: 'Pix Fácil',
              route: Routes.pixfacilFotoRosto,
            )


          ],
        ),
      ),
    );
  }
}
