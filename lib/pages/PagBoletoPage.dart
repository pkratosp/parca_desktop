import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parca_desktop/controllers/PagBoletoController.dart';
import 'package:parca_desktop/widgets/DrawerWidget.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:parca_desktop/routes.dart';

class PagBoletoPage extends StatefulWidget {
  const PagBoletoPage({Key? key}) : super(key: key);

  @override
  State<PagBoletoPage> createState() => _PagBoletoPageState();
}

class _PagBoletoPageState extends State<PagBoletoPage> {

  PagBoletoControler pagBoletoControler = Get.put(PagBoletoControler());

  String codBoleto = '';
  String linhaDigitavel = '';

  void AlterLinhaDigitavel(value) {
    setState(() {
      linhaDigitavel = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
          title: Text('Pagamento de boleto')
      ),
      body: Stack(
        children: [

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text('Minha paginad de pagamento de boleto'),
              ),
            ),

            // ElevatedButton(
            //   onPressed: () async {
            //     var res = await Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const SimpleBarcodeScannerPage(),
            //         ));
            //     setState(() {
            //       if (res is String) {
            //         codBoleto = res;
            //         print(res);
            //       }
            //     });
            //   },
            //   child: const Text('Escanear cógigo de barras'),
            // ),

            ElevatedButton(
                onPressed: () async {
                    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                        "#ff6666",
                        'Cancelar',
                        true,
                        ScanMode.BARCODE);
                    print(barcodeScanRes);
                    print('OLALLLLL');
                    if(barcodeScanRes != '-1'){
                      codBoleto = barcodeScanRes;
                    }
                  },
                child: Text('Ler boleto')
            ),

            Text('Código do boleto: ${codBoleto}'),


            Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text('Digite sua linha digitavel'),
                        border: OutlineInputBorder()
                    ),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      AlterLinhaDigitavel(value);
                    },
                  ),
                ),
            ),

            Text('Linha digitavel: ${linhaDigitavel}')


          ],
        )

        ],
      ),
    );
  }
}
