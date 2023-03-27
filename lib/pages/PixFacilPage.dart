import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:brasil_fields/brasil_fields.dart';

//controller
import 'package:parca_desktop/controllers/PixFacilController.dart';

class PixFacilPage extends StatelessWidget {
  // const PixFacilPage({Key? key}) : super(key: key);

  PixFacilController pixFacilController = Get.put(PixFacilController());

  var waiting = false.obs;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PixFacil'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [

                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('CPF'),
                          border: OutlineInputBorder()
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CpfInputFormatter()
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo obrigatório';
                        }
                        return null;
                      },
                      onChanged: (value) {

                      },
                    ),

                    SizedBox(height: 10,),

                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('CNPJ'),
                          border: OutlineInputBorder()
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CnpjInputFormatter()
                      ],
                      onChanged: (value){

                      },
                    ),

                    SizedBox(height: 10,),

                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('E-mail'),
                          border: OutlineInputBorder()
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Campo obrigatório';
                        }
                        return null;
                      },
                      onChanged: (value){
                        pixFacilController.email = value;
                      },
                    ),

                    SizedBox(height: 10,),

                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Celular'),
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Campo obrigatório';
                        }

                        return null;
                      },
                      onChanged: (value){
                        pixFacilController.celular = value;
                      },
                    ),

                    SizedBox(height: 10,),

                    //adicionar o select da chave pix, e o input para digitar a chave

                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Agência'),
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Campo obrigatório';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        pixFacilController.agencia = value;
                      },
                    ),

                    SizedBox(height: 10,),

                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Conta'),
                          border: OutlineInputBorder()
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Campo obrigatório';
                        }
                        return null;
                      },
                      onChanged: (value){
                        pixFacilController.conta = value;
                      },
                    ),

                    SizedBox(height: 10,),

                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Digito da conta'),
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Campo obrigatório';
                        }
                        return null;
                      },
                      onChanged: (value){
                        pixFacilController.digitoConta = value;
                      },
                    ),

                    SizedBox(height: 10,),

                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Valor'),
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Campo obrigatório';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        pixFacilController.valor = value;
                      },
                    ),

                    SizedBox(height: 10,),

                    Obx(() => waiting.value == true
                        ? Center(
                            child: CircularProgressIndicator(),
                        ) : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              padding: const EdgeInsets.all(20)),
                              onPressed: () async {
                                // waiting.value = true;
                                // // if(_formKey.currentState!.validate()){
                                // //   var consultaCPF = await pixFacilController.validarCPF();
                                // //   if(consultaCPF){
                                // //     print(consultaCPF);
                                // //   }
                                // // }
                                // waiting.value = false;
                                if(_formKey.currentState!.validate()){
                                  print('ok');
                                }
                              },
                              child: Text('Prosseguir')
                            )
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}