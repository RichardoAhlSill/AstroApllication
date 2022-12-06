import 'package:astroapp/domain/menu_astro.dart';
import 'package:astroapp/pages/conteudos_astronautica/angulos_de_euler.dart';
import 'package:astroapp/pages/conteudos_astronautica/aplicacoes_da_astronautica.dart';
import 'package:astroapp/pages/homePage.dart';
import 'package:flutter/material.dart';

import '../pages/conteudos_astronautica/introducao_astronautica.dart';
import '../pages/conteudos_astronomia/constelacoes.dart';
import '../pages/conteudos_astronomia/introducao_astronomia.dart';
import '../pages/conteudos_astronomia/planetas.dart';

class CardMenu extends StatefulWidget {
  final Menu_astro menu_astro;

  const CardMenu({Key? key, required this.menu_astro}) : super(key: key);

  @override
  State<CardMenu> createState() => _CardMenu();
}

class _CardMenu extends State<CardMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(bottom: 75.0),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          width: 7,
        ),
      ),
      child: InkWell(
        child: Column(
          children: [
            Text(
              widget.menu_astro.titulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.yellow,
              ),
            ),
            Image.asset(
              widget.menu_astro.imagem,
            ),
          ],
        ),
        onTap: () {
          Widget rota = HomePage();
          switch (widget.menu_astro.rota) {
            case 'Angulos_De_Euler()':
              rota = Angulos_De_Euler();
              break;

              case 'Aplicacoes_Da_Astronautica()':
              rota = Aplicacoes_Da_Astronautica();
              break;

              case 'Introducao_Astronautica()':
              rota = Introducao_Astronautica();
              break;

              case 'Constelacoes()':
              rota = Constelacoes();
              break;

              case 'Planetas()':
              rota = Planetas();
              break;

              case 'Introducao_Astronomia()':
              rota = Introducao_Astronomia();
              break;
            default:
          }

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => rota),
          );
        },
      ),
    );
  }
}
