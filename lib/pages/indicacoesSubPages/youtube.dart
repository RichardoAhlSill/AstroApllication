import 'package:flutter/material.dart';

class YouTube extends StatefulWidget {
  const YouTube({Key? key}) : super(key: key);

  @override
  State<YouTube> createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {
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
              'Canais do Youtube',
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
                      'ABF - AstrobioFísica',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Ministradas pelo propfessor Virgílio, as aulas do canal "ABF - AstroBioFísica" para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.',
                    ),
                    SizedBox(height: 16),
                    Text(
                        'Link do canal: https://www.youtube.com/c/ABFAstroBioF%C3%ADsica'),
                  ],
                ),
              ),
              onTap: abfOnTap,
            ),

            //canal 2
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
                      'ABF - AstrobioFísica',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Ministradas pelo propfessor Virgílio, as aulas do canal "ABF - AstroBioFísica" para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.',
                    ),
                    SizedBox(height: 16),
                    Text(
                        'Link do canal: https://www.youtube.com/c/ABFAstroBioF%C3%ADsica'),
                  ],
                ),
              ),
              onTap: abfOnTap,
            ),

            //canal 3

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
                      'ABF - AstrobioFísica',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Image.network(
                      'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj',
                      width: 200,
                      height: 100,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Ministradas pelo propfessor Virgílio, as aulas do canal "ABF - AstroBioFísica" para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.',
                    ),
                    SizedBox(height: 16),
                    Text(
                        'Link do canal: https://www.youtube.com/c/ABFAstroBioF%C3%ADsica'),
                  ],
                ),
              ),
              onTap: abfOnTap,
            ),

            //Canal 4
          ],
        ),
      ),
    );
  }

  void abfOnTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Center(
          child: Text('Aqui terá o canal ABF.'),
        ),
      ),
    );
  }
}
