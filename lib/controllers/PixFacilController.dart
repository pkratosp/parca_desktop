import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'dart:convert';

//models
import 'package:parca_desktop/models/ConsultaDocs.dart';
import 'package:parca_desktop/models/validCPF/ConsultaCPF.dart';
import 'package:parca_desktop/models/validCPF/CpfInvalido.dart';
import 'package:parca_desktop/models/validCPF/ValidCPF.dart';

class PixFacilController extends GetxController {

  var waiting = true.obs;

  var respostaDoc = null;

  var id = null;
  var franchise_id = null;
  var partner_id = null;
  var celular = null;
  var email = null;
  var valor = null;
  var tipoPix = null;
  var cpf = null;
  var endereco = null;
  var bairro = null;
  var cidade = null;
  var estado = null;
  var agencia = null;
  var conta = null;
  var digitoConta = null;
  var tipoBanco = null;
  var parcelas = null;
  var cnpj = null;


  //verifica se o usuario enviou as fotos para proceseguir para a próxima etapa
  verificarFotoRosto() async {
    waiting.value = true;
    var verificaFotoRosto = await _verificaFotoRosto();
    waiting.value = false;
    return verificaFotoRosto;
  }

  _verificaFotoRosto() async {
    Uri endpoint = Uri.parse('https://parcatecnologia.com/api/v2/consulta/docs/pixfacil/desktop/rosto/${id}');
    Map<String,String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    final http.Response resp = await http.get(
        endpoint,
        headers: headers
    );

    if(resp.statusCode == 200){
      ConsultaDocs consultaDocs = ConsultaDocs.fromJson(json.decode(resp.body));

      if(consultaDocs.success == true){
        respostaDoc = consultaDocs;
        return true;
      }else {
        Get.defaultDialog(
          title: 'Erro',
          content: Text('Ocorreu um erro')
        );
        return false;
      }

    }else {
      Get.defaultDialog(
          title: 'Erro',
          content: Text('Ocorreu um erro ao consultar'),
          radius: 10.0
      );
      print(resp.body.toString());
      return false;
    }
  }

  verificaFotoCartao() async {
    waiting.value = true;
    var verificaFotoCartao = await _verificaFotoCartao();
    waiting.value = false;
    return verificaFotoCartao;
  }

  _verificaFotoCartao() async {
    Uri endpoint = Uri.parse('https://parcatecnologia.com/api/v2/consulta/docs/pixfacil/desktop/cartao/${id}');
    Map<String,String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    final http.Response resp = await http.get(
        endpoint,
        headers: headers
    );

    if(resp.statusCode == 200){
      ConsultaDocs consultaDocs = ConsultaDocs.fromJson(json.decode(resp.body));

      if(consultaDocs.success == true){
        respostaDoc = consultaDocs;
        return true;
      }else {
        Get.defaultDialog(
            title: 'Erro',
            content: Text('Ocorreu um erro')
        );
        return false;
      }

    }else {
      Get.defaultDialog(
          title: 'Erro:',
          content: Text('Ocorreu um erro ao consultar'),
          radius: 10.0
      );
      return false;
    }
  }

  validarCPF () async {
    waiting.value = true;
    var resp = await _validarCPF();
    waiting.value = false;
    return resp;
  }
  
  _validarCPF() async {
    Uri endpoint = Uri.parse('https://parcatecnologia.com/api/v2/cpf/consultar');
    Map<String, String> body = {
      "cpf": cpf.toString()
    };
    Map<String,String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
    
    final http.Response response = await http.post(
      endpoint,
      body: body,
      headers: headers
    );

    if(response.statusCode == 200){

      ValidCPFModel validCPFModel = ValidCPFModel.fromJson(json.decode(response.body));
      ConsultaCPFModel consultaCPFModel = ConsultaCPFModel.fromJson(json.decode(response.body));
      CpfInvalidoModel cpfInvalidoModel = CpfInvalidoModel.fromJson(json.decode(response.body));

      if(validCPFModel.valid == true){
        //cpf ok
        return true;

      }else if(consultaCPFModel.success == false) {
        // não foi possivel consutlar o cpf
        Get.defaultDialog(
          title: 'Erro',
          content: Text('Não foi possivel consultar o CPF')
        );
        return false;

      }else if(cpfInvalidoModel.success == false) {
        // cpf invalido
        Get.defaultDialog(
          title: 'CPF inválido',
          content: Text('O CPF digitado é inválido')
        );
        return false;
      }

    }

  }

  //depois de tudo validado ira criar o lead no piperun do pix
  createPix() async {
    waiting.value = true;
    var responsePix = await _createdPix();
    waiting.value = false;

    return responsePix;
  }

  _createdPix() async {
    //

  }

}