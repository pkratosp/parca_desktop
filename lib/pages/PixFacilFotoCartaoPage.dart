import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart'; //gera o qr code
import 'package:uuid/uuid.dart';

//rotas
import 'package:parca_desktop/routes.dart';

//controller
import 'package:parca_desktop/controllers/PixFacilController.dart';

class PixFacilFotoCartaoPage extends StatelessWidget {
  // const PixFacilFotoCartaoPage({Key? key}) : super(key: key);

  PixFacilController pixFacilController = Get.put(PixFacilController());

  var waintingOk = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PixFacil foto cartão'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Text('Antes de posseguir porfavor envie sua foto com rosto aqui'),

                  SizedBox(height: 10,),

                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: QrImage(
                        data: 'https://pixfacil.parcacred.com.br/fotocartao.html?id=${pixFacilController.id}',
                        version: QrVersions.auto,
                      ),
                    ),
                  ),

                  Text('Após o envio porfavor clique no botão de ok'),

                  Obx(() => waintingOk.value == true ?
                  Center(
                    child: CircularProgressIndicator(),
                  )
                      : ElevatedButton(
                      onPressed: () async{
                        waintingOk.value = true;
                        var resp = await pixFacilController.verificaFotoCartao();
                        if(resp){
                          if(pixFacilController.respostaDoc.fileExist == true && pixFacilController.respostaDoc != null){
                            Get.toNamed(Routes.pixfacil);
                          }else if(pixFacilController.respostaDoc.fileExist == false) {
                            Get.defaultDialog(
                                title: 'Aviso',
                                content: Text('Envie o documento antes de prosseguir')
                            );
                          }
                        }
                        waintingOk.value = false;
                      },
                      child: Text('Ok')
                  )
                  )



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
