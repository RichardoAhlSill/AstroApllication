import 'dart:async';
import 'dart:convert';

import 'package:astroapp/domain/questoes.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class QuestoesApi {
  String baseUrl = "https://api-production-b057.up.railway.app";

  Future<List<Questoes>> listarQuestoesApi() async {
    var url = Uri.parse(baseUrl + "/questoes");
    var response = await http.get(url);

    List<Questoes> lista = <Questoes>[];
    try {
      if (response.statusCode == 200) {
        var result = (jsonDecode(utf8.decode(response.bodyBytes)));

        for (var json in result) {
          Questoes questao = Questoes.fromApiJson(json);
          lista.add(questao);
        }
      }
    } catch (e) {
      throw Exception("Erro");
    }

    return lista;
  }
}
