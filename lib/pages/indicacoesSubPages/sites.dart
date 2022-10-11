// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';

class Sites extends StatefulWidget {
  const Sites({Key? key}) : super(key: key);


  @override
  State<Sites> createState() => _SitesState();
}

class _SitesState extends State<Sites> {
  
/*Future<void> _launchLink(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false, forceSafariVC: false);
  } else {
    print('Não pode acessar o link $url');
  }
}*/

Future<void> abrirSite() async{
  final Uri _url = Uri.parse('http://www.oba.org.br/site/');

  if (!await launchUrl(
    _url,
    mode: LaunchMode.externalApplication,
    )){
      throw 'Could not launch $_url';
    }
}

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
              'Sites',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 32),
            Container(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Site da OBA',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 16),
                  
                  Image.network(
                    'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png',
                    width: 200,
                    height: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => abrirSite(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Visite o site',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            //site 2
            SizedBox(height: 32),
            Container(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Site da OBA',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 16),
                  Image.network(
                    'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png',
                    width: 200,
                    height: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  /*ElevatedButton(
                    onPressed: () => _launchLink('http://www.oba.org.br/site/'),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Visite o site',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),*/
                ],
              ),
            ),

            //site 3
            SizedBox(height: 32),
            Container(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Site da OBA',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 16),
                  Image.network(
                    'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png',
                    width: 200,
                    height: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  /*ElevatedButton(
                    onPressed: () => _launchLink('http://www.oba.org.br/site/'),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Visite o site',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),*/
                ],
              ),
            ),

            //site 4
            SizedBox(height: 32),
            Container(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Site da OBA',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 16),
                  Image.network(
                    'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png',
                    width: 200,
                    height: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Link(
                    //do vídeo: 
                    target: LinkTarget.blank,
                    uri: Uri.parse('http://www.oba.org.br/site/'), 
                    builder: (context, followLink) => ElevatedButton(
                      child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Visite o site',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                      onPressed: followLink,
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

  void obaOnTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Center(
          child: Text('Aqui terão sites'),
        ),
      ),
    );
  }
}
