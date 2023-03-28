import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parca_desktop/routes.dart';
import 'package:flutter/services.dart';
import 'package:parca_desktop/widgets/HomeButtonImage.dart';
import 'package:window_manager/window_manager.dart';

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

  void init () async {
    await WindowManager.instance.setFullScreen(true);
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Image.asset('assets/logo.png',height: 40,),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF0F3063),
        child: Stack(
          children: [

            Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    HomeButtonImage(
                      image: 'assets/banner.png',
                    ),

                    GridView.count(
                      childAspectRatio: 1 / 1,
                      primary: false,
                      padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      children: [
                        HomeButton(
                          title: 'Seguros',
                          route: Routes.seguros,
                          image: 'assets/icons/seguro.png',
                        ),
                        HomeButton(
                          title: 'Consulta de CPF e CNPJ',
                          route: Routes.consultaCPFCNPJ,
                          image: 'assets/icons/seguro.png',
                        ),
                        HomeButton(
                          title: 'Recarga de celular',
                          route: Routes.recargaCelular,
                          image: 'assets/icons/recarga.png',
                        ),
                        HomeButton(
                          title: 'Parça Bank',
                          route: Routes.parcaBank,
                          image: 'assets/icons/parca_bank.png',
                        ),
                        HomeButton(
                          title: 'Empréstimos e consórcios',
                          route: Routes.emprestimo,
                          image: 'assets/icons/emprestimo.png',
                        ),
                        HomeButton(
                          title: 'Pix Fácil',
                          route: Routes.pixfacilFotoRosto,
                          image: 'assets/icons/pix.png',
                        )
                      ],
                    )
                  ],
                ),
            )

          ],
        ),
      ),
    );
  }
}
