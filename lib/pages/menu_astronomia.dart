import 'package:astroapp/data/assuntos_dao.dart';
import 'package:flutter/material.dart';

import '../data/bd.dart';
import '../domain/menu_astro.dart';
import '../widget/card_menu.dart';

class Menu_Astronomia extends StatefulWidget {
  const Menu_Astronomia({Key? key}) : super(key: key);

  @override
  Menu_AstronomiaState createState() => Menu_AstronomiaState();
}

class Menu_AstronomiaState extends State<Menu_Astronomia> {
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
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Center(
                            child: Text(
                          "Astronomia",
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                        ),
                        MenuListView(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  MenuListView() {
    return FutureBuilder<List<Menu_astro>>(
      future: lista,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<Menu_astro> lista = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return CardMenu(menu_astro: lista[index]);
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
