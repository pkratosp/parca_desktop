import 'package:flutter/material.dart';

class SeguroPage extends StatefulWidget {
  const SeguroPage({Key? key}) : super(key: key);

  @override
  State<SeguroPage> createState() => _SeguroPageState();
}

class _SeguroPageState extends State<SeguroPage> {
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
        child: Text('Paginas de seguros'),
      ),
    );
  }
}
