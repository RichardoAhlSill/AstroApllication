import 'package:flutter/material.dart';

class OutrasRedes extends StatefulWidget {
  const OutrasRedes({Key? key}) : super(key: key);

  @override
  State<OutrasRedes> createState() => _OutrasRedesState();
}

class _OutrasRedesState extends State<OutrasRedes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AstroAPP'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 18, 30, 138),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: ListView(
          children: [
            Text(
              'Outras redes',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 32),
            const Text(
              'Já vimos importantes canais no YouTube, indicações de sites, de livros e materiais (ambos com seus autorores - obviamente :) ). Que tal agora conhecer mais de perto importantes contrinbuidores para o desenvolvimento da astronomia? \n\n DICA: Indicamos especialmente o Telegram  destes, pois contém muitos outros materiais, além dos que estão aqui no app ;).'
            ),
            SizedBox(height: 32),
            Card(
              color: Colors.grey,
              child: Column(
                children: [
                  Text('Virgílio'),
                  SizedBox(height: 16),
                  Image.network(
                    'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
                    height: 100,
                    width: 200,
                  ),
                  SizedBox(height: 16),
                  Text('Sim, ele mesmo. O dono do canal ABF! :)'),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/5/58/Instagram-Icon.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text('Instagram: '),
                      SizedBox(width: 16),
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/4/40/Deus_Telegram.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text('Telegram: '),
                      
                    ],
                  )
                ],
              ),

            ),

            //parte 2

            Card(
              color: Colors.grey,
              child: Column(
                children: [
                  Text('Virgílio'),
                  SizedBox(height: 16),
                  Image.network(
                    'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
                    height: 100,
                    width: 200,
                  ),
                  SizedBox(height: 16),
                  Text('Sim, ele mesmo. O dono do canal ABF! :)'),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/5/58/Instagram-Icon.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text('Instagram: '),
                      SizedBox(width: 16),
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/4/40/Deus_Telegram.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text('Telegram:'),
                      
                    ],
                  )
                ],
              ),

            ),

            //parte 3

            Card(
              color: Colors.grey,
              child: Column(
                children: [
                  Text('Virgílio'),
                  SizedBox(height: 16),
                  Image.network(
                    'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
                    height: 100,
                    width: 200,
                  ),
                  SizedBox(height: 16),
                  Text('Sim, ele mesmo. O dono do canal ABF! :)'),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/5/58/Instagram-Icon.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text('Instagram: '),
                      SizedBox(width: 16),
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/4/40/Deus_Telegram.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text('Telegram:'),
                      
                    ],
                  )
                ],
              ),

            ),

            //parte 4

            Card(
              color: Colors.grey,
              child: Column(
                children: [
                  Text('Virgílio'),
                  SizedBox(height: 16),
                  Image.network(
                    'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
                    height: 100,
                    width: 200,
                  ),
                  SizedBox(height: 16),
                  Text('Sim, ele mesmo. O dono do canal ABF! :)'),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/5/58/Instagram-Icon.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text('Insta: '),
                      SizedBox(width: 16),
                      Image.network('https://upload.wikimedia.org/wikipedia/commons/4/40/Deus_Telegram.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text('Telegram: '),
                      
                    ],
                  )
                ],
              ),

            ),
          ],
        ),
        


      ),
    );
  }
}
