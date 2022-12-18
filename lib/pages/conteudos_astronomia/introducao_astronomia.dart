import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:flutter/material.dart';

import '../../data/bd/assuntos_dao.dart';
import '../../domain/menu_astro.dart';
import '../../widget/card_assuntos.dart';

class Introducao_Astronomia extends StatefulWidget {
  const Introducao_Astronomia({Key? key}) : super(key: key);

  @override
  Introducao_AstronomiaState createState() => Introducao_AstronomiaState();
}

class Introducao_AstronomiaState extends State<Introducao_Astronomia> {
  Future<List<Menu_astro>> lista = AssuntosDao.listarPacotes('astronomia');

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
