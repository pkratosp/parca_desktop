import 'package:flutter/material.dart';

//widgets
import 'package:parca_desktop/widgets/DrawerWidget.dart';
import 'package:parca_desktop/widgets/AppBarWidget.dart';
import 'package:parca_desktop/widgets/HomeButton.dart';

class EmprestimoPage extends StatefulWidget {
  const EmprestimoPage({Key? key}) : super(key: key);

  @override
  State<EmprestimoPage> createState() => _EmprestimoPageState();
}

class _EmprestimoPageState extends State<EmprestimoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/logo.png',height: 40,),
          centerTitle: true,
          backgroundColor: Color(0xFF0F3063),
          foregroundColor: Colors.green,
          elevation: 0,
        ),
        body: Container(
          child: Text('Pagina de emprestimo'),
        ));
  }
}

