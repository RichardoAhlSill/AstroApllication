import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:flutter/material.dart';

import '../../data/assuntos_dao.dart';
import '../../domain/menu_astro.dart';
import '../../widget/card_assuntos.dart';

class Introducao_Astronautica extends StatefulWidget {
  const Introducao_Astronautica({Key? key}) : super(key: key);

  @override
  _Introducao_AstronauticaState createState() =>
      _Introducao_AstronauticaState();
}

class _Introducao_AstronauticaState extends State<Introducao_Astronautica> {
  Future<List<Menu_astro>> lista = AssuntosDao.listarPacotes('astronautica');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'AstroApp',
          style: TextStyle(fontSize: 24),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            AssuntosListView(),
          ],
        ),
      ),
    );
  }

  AssuntosListView() {
    return FutureBuilder<List<Menu_astro>>(
      future: lista,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<Menu_astro> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              index = 2;
              return CardAssuntos(menu_astro: lista[index]);
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
