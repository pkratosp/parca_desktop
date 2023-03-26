import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parca_desktop/routes.dart';

class RecargaCelularPage extends StatefulWidget {
  const RecargaCelularPage({Key? key}) : super(key: key);

  @override
  State<RecargaCelularPage> createState() => _RecargaCelularPageState();
}

class _RecargaCelularPageState extends State<RecargaCelularPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: Text('Recarga de celular')
      ),
      body: Stack(
        children: [

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Minha pagina de recarga de celular'),
          )

        ],
      ),
    );
  }
}
