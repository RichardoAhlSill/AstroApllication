import 'package:flutter/material.dart';

class Questoes {
  late final String imagem;
  late final String titulo;
  late final int alternativaCerta;
  late final String alternativa1;
  late final String alternativa2;
  late final String alternativa3;
  late final String alternativa4;
  late final String alternativa5;
  late final String assunto;
  late final int nivel;

  Questoes(
      {required this.imagem,
        required this.titulo,
        required this.alternativa1,
        required this.alternativa2,
        required this.alternativa3,
        required this.alternativa4,
        required this.alternativa5,
        required this.alternativaCerta,
        required this.assunto,
        required this.nivel});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imagem'] = imagem;
    data['titulo'] = titulo;
    data['alternativa1'] = alternativa1;
    data['alternativa2'] = alternativa2;
    data['alternativa3'] = alternativa3;
    data['alternativa4'] = alternativa4;
    data['alternativa5'] = alternativa5;
    data['assunto'] = assunto;

    return data;
  }

  Questoes.fromJson(Map<String, dynamic> json) {
    imagem = json['imagem'];
    titulo = json['titulo'];
    alternativa1 = json['alternativa1'];
    alternativa2 = json['alternativa2'];
    alternativa3 = json['alternativa3'];
    alternativa4 = json['alternativa4'];
    alternativa5 = json['alternativa5'];
    alternativaCerta = json['alternativaCerta'];
  }

  Questoes.fromApiJson(Map<String, dynamic> json) {
    imagem = json['imagem'];
    titulo = json['titulo'];
    alternativa1 = json['alternativa1'];
    alternativa2 = json['alternativa2'];
    alternativa3 = json['alternativa3'];
    alternativa4 = json['alternativa4'];
    alternativa5 = json['alternativa5'];
    alternativaCerta = json['alternativaCerta'];
    assunto = json['assunto'];
    nivel = json['nivel'];
  }
}