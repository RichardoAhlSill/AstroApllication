import 'package:flutter/material.dart';

class Livros extends StatefulWidget {
  const Livros({Key? key}) : super(key: key);

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
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
              'Livros e outros materiais',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 32),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
                      'Guia para seletivas online',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png',
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.',
                    ),
                  ],
                ),
              ),
              onTap: guiaseletivasOnTap,
            ),

            //parte 2

            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
                      'Guia para seletivas online',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png',
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.',
                    ),
                  ],
                ),
              ),
              onTap: guiaseletivasOnTap,
            ),

            //parte 3

            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
                      'Guia para seletivas online',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png',
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.',
                    ),
                  ],
                ),
              ),
              onTap: guiaseletivasOnTap,
            ),

            //parte 4

            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
                      'Guia para seletivas online',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png',
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.',
                    ),
                  ],
                ),
              ),
              onTap: guiaseletivasOnTap,
            ),
          ],
        ),
      ),
    );
  }

  void guiaseletivasOnTap() {
    Navigator.push(
      context,
      MaterialPageRoute( 
        builder:(context) => const Center(
          child: Text(
            'Aqui terá o guia de estudos para as seletivas online'
          ),
        ), 
      ),
    );
  }
}
