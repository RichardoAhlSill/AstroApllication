import 'package:astroapp/pages/indicacoesSubPages/livros.dart';
import 'package:astroapp/pages/indicacoesSubPages/outrasredes.dart';
import 'package:astroapp/pages/indicacoesSubPages/sites.dart';
import 'package:astroapp/pages/indicacoesSubPages/youtube.dart';
import 'package:flutter/material.dart';

class IndicacoesPage extends StatefulWidget {
  const IndicacoesPage({Key? key}) : super(key: key);

  @override
  State<IndicacoesPage> createState() => _IndicacoesPageState();
}

class _IndicacoesPageState extends State<IndicacoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
        centerTitle: true,
        title: const Text('AstroAPP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: ListView(
          children: [
            Text(
              'Indicações',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 32),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(
                      'Canais do YouTube',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png',
                      width: 200,
                      height: 100,
                    ),
                  ],
                ),
              ),
              onTap: opTap,
            ),
            SizedBox(height: 16),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(
                      'Sites',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/5/5f/Website.png',
                      width: 200,
                      height: 100,
                    ),
                  ],
                ),
              ),
              onTap: sitesOnTap,
            ),
            SizedBox(height: 16),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(
                      'Livros e materiais diversos',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'https://publicdomainvectors.org/photos/StackOfBooks.png',
                      width: 200,
                      height: 100,
                    ),
                  ],
                ),
              ),
              onTap: livrosOnTap,
            ),
            SizedBox(height: 16),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(
                      'Outras redes',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'https://c.pxhere.com/images/48/55/ea3e6a6c6dc4c0aad03ba603702e-1564111.jpg!d',
                      width: 200,
                      height: 100,
                    ),
                  ],
                ),
              ),
              onTap: redesOnTap,
            ),
          ],
        ),
      ),
    );
  }

  void opTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const YouTube()),
    );
  }

  void sitesOnTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Sites();
        },
      ),
    );
  }

  void livrosOnTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Livros(
          );
        },
      ),
    );
  }

  void redesOnTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OutrasRedes(),
      ),
    );
  }
}
