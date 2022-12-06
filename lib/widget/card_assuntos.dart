import 'package:astroapp/domain/menu_astro.dart';
import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:astroapp/pages/conteudos_astronautica/angulos_de_euler.dart';
import 'package:astroapp/pages/conteudos_astronautica/aplicacoes_da_astronautica.dart';
import 'package:astroapp/pages/homePage.dart';
import 'package:flutter/material.dart';

import '../pages/conteudos_astronautica/introducao_astronautica.dart';
import '../pages/conteudos_astronomia/constelacoes.dart';
import '../pages/conteudos_astronomia/introducao_astronomia.dart';
import '../pages/conteudos_astronomia/planetas.dart';

class CardAssuntos extends StatefulWidget {
  final Menu_astro menu_astro;

  const CardAssuntos({Key? key, required this.menu_astro}) : super(key: key);

  @override
  State<CardAssuntos> createState() => _CardAssuntos();
}

class _CardAssuntos extends State<CardAssuntos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Text(
                  widget.menu_astro.titulo,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                const SizedBox(height: 16),
                Container(
                  child: Image.asset(
                    widget.menu_astro.imagem,
                    height: 400,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      widget.menu_astro.conteudo,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: Text(
                    "IR PARA QUESTÕES",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.yellow,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AssuntosQuestoes()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
