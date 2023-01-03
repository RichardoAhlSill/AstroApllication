import 'package:astroapp/data/api/nasa_api.dart';
import 'package:flutter/material.dart';
import '../domain/nasa.dart';
import '../widget/lista_nasa_card.dart';

class NasaPage extends StatefulWidget {

  const NasaPage({Key? key}) : super(key: key);

  @override
  State<NasaPage> createState() => _NasaPageState();
}

class _NasaPageState extends State<NasaPage> {

  Future<Nasa> lista = NasaApi().listarApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        title: const Text(
          'AstroAPP',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [const SizedBox(height: 16), buildListView()],
        ),
      ),
    );
  }

  buildListView() {
    return FutureBuilder<Nasa>(
      future: lista,
      builder: (context, snapshot) {

        if (snapshot.hasData) {
          Nasa list = snapshot.data!;

          return CardNasa(
            nasa: list,
          );

        } else if (snapshot.hasError) {
          return const Center(child: Text("Tem erro aqui, mano"));
        } else if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}


