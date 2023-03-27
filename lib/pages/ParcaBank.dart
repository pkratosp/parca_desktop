import 'package:flutter/material.dart';

class ParcaBankPage extends StatefulWidget {
  const ParcaBankPage({Key? key}) : super(key: key);

  @override
  State<ParcaBankPage> createState() => _ParcaBankPageState();
}

class _ParcaBankPageState extends State<ParcaBankPage> {
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
        child: Text('Pagina parcaBank'),
      ),
    );
  }
}
