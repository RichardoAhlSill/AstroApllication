import 'package:flutter/material.dart';


class Sobre extends StatefulWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
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
                        Center(
                            child: Text(
                          "Sobre",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        const SizedBox(height: 16),
                        Container(
                          child: Image.network(
                            'https://www.alagoas24horas.com.br/wp-content/uploads/2021/01/IfalArapiraca2.jpeg',
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.only(top: 16),
                            child: Text(
                          'Atualmente o ensino para a área de astronomia e astronáutica começa a ter um apreço maior diante do público em geral. No entanto, apesar de olimpíadas como a OBA (Olimpíada Brasileira de Astronomia e Astronáutica), aquilo que é exposto na internet ainda se vê muito desorganizado, não linkado, por assim dizer.\n\n'
                          'É justamente para isso que este projeto surge. O AstroAPP, por meio de seus desenvolvedores, busca promover a difusão do conhecimento da astronomia e da astronáutica, tudo num único espaço, num aplicativo completo. E o melhor de tudo: gratuito!\n\n'
                          'Nossa missão é mostrar para as pessoas a grandiosidade do universo, com toda sua riqueza e esplendor próprios, e tudo que com ele se relaciona. Permitindo uma definição mais subjetiva, é de nossa intenção promover o encanto deste mundo único. Vamos tripular nesse foguete?',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                        Container(
                          padding: const EdgeInsets.only(right: 10, bottom: 10, left: 10, top: 30),
                          child: Text(
                            'Contate os desenvolvedores',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),

                        /*
                        Container(
                          padding: const EdgeInsets.only(left: 10, bottom: 6),
                            child: new Row(children: [
                              new Row(children: [
                                Image.network(
                                  'https://logospng.org/download/whatsapp/logo-whatsapp-verde-icone-ios-android-256.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Text(
                                  'Daniel Berg',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                ),
                              ]),
                              
                              new Row(children: [
                                Image.network(
                                  'https://logospng.org/download/whatsapp/logo-whatsapp-verde-icone-ios-android-256.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Text(
                                  'Içami Costa',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                ),
                              ]),
                              new Row(children: [
                                Image.network(
                                  'https://logospng.org/download/whatsapp/logo-whatsapp-verde-icone-ios-android-256.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Text(
                                  'Marcos Felype',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                ),
                              ]),
                              new Row(children: [
                                Image.network(
                                  'https://logospng.org/download/whatsapp/logo-whatsapp-verde-icone-ios-android-256.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Text(
                                  'Ricardo Alexandre',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                ),
                              ]),
                              new Row(children: [
                                Image.network(
                                  'https://logospng.org/download/whatsapp/logo-whatsapp-verde-icone-ios-android-256.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Text(
                                  'Vítor Magalhães',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ]),
                            ]),
                        ),
                        */

                        Container(
                          padding: const EdgeInsets.only(left: 6),
                          child: new Row(children: [
                            new Row(children: [
                              Image.network(
                                'https://images.vexels.com/media/users/3/137198/isolated/lists/07f0d7b69ef071571e4ada2f4d6a053a-icone-do-instagram-colorido.png',
                                height: 32,
                                width: 32,
                              ),
                              Text(
                                '@daniel_dbs7',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                              ),
                            ]),
                            new Row(children: [
                              Image.network(
                                'https://images.vexels.com/media/users/3/137198/isolated/lists/07f0d7b69ef071571e4ada2f4d6a053a-icone-do-instagram-colorido.png',
                                height: 32,
                                width: 32,
                              ),
                              Text(
                                '@icamicosta',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                              ),
                            ]),
                            new Row(children: [
                              Image.network(
                                'https://images.vexels.com/media/users/3/137198/isolated/lists/07f0d7b69ef071571e4ada2f4d6a053a-icone-do-instagram-colorido.png',
                                height: 32,
                                width: 32,
                              ),
                              Text(
                                '@marcosfelypesilva',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                              ),
                            ]),
                            new Row(children: [
                              Image.network(
                                'https://images.vexels.com/media/users/3/137198/isolated/lists/07f0d7b69ef071571e4ada2f4d6a053a-icone-do-instagram-colorido.png',
                                height: 32,
                                width: 32,
                              ),
                              Text(
                                '@richardo_ahl.sill',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                              ),
                            ]),
                            new Row(children: [
                              Image.network(
                                'https://images.vexels.com/media/users/3/137198/isolated/lists/07f0d7b69ef071571e4ada2f4d6a053a-icone-do-instagram-colorido.png',
                                height: 32,
                                width: 32,
                              ),
                              Text(
                                '@v_magalhaees',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ]),
                          ]),
                        ),
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
}
