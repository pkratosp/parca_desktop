import 'package:flutter/material.dart';

class ConsultaCPFCNPJPage extends StatefulWidget {
  const ConsultaCPFCNPJPage({Key? key}) : super(key: key);

  @override
  State<ConsultaCPFCNPJPage> createState() => _ConsultaCPFCNPJPageState();
}

class _ConsultaCPFCNPJPageState extends State<ConsultaCPFCNPJPage> {
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
        child: Text('Página de consulta CPF ou CPNJ'),
      ),
    );
  }
}
