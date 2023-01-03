import 'package:flutter/material.dart';
import 'package:astroapp/domain/nasa.dart';

class DetalhesPage extends StatefulWidget {
  final Nasa nasa;

  const DetalhesPage({
    Key? key,
    required this.nasa,
  }) : super(key: key);

  @override
  _DetalhesPageState createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {

  Nasa get nasa => widget.nasa;

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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                SizedBox(height: 16),
                Text(
                  nasa.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Image.network(nasa.url),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "© ${nasa.copyright}",
                      textAlign: TextAlign.end,
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      nasa.date,
                      textAlign: TextAlign.end,
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      nasa.mediaType,
                      textAlign: TextAlign.end,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  nasa.explanation,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
