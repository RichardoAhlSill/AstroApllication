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

  Future<List<Nasa>> lista = NasaApi().listarApi();

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
    return FutureBuilder<List<Nasa>>(
      future: lista,
      builder: (context, snapshot) {

        if (snapshot.hasData) {
          List<Nasa> list = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return CardNasa(nasa: list[index]);
            },
          );
        } else if (snapshot.hasError) {
          print(snapshot.hasError);
          return Center(child: Text("Tem erro aqui, mano"));
        } else if (!snapshot.hasData) {
          print(!snapshot.hasData);
          return Center(child: CircularProgressIndicator());
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}


