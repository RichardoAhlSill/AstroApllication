import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_questoes.dart';

class AssuntosQuestoes extends StatefulWidget {
  const AssuntosQuestoes({Key? key}) : super(key: key);

  @override
  State<AssuntosQuestoes> createState() => _AssuntosQuestoesState();
}

class _AssuntosQuestoesState extends State<AssuntosQuestoes> {
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

            const Text(
              'Questões',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                height: 1,
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(                
                children: [
                  ClipRRect(
                    child: Image.network(
                      'https://www.elsoldemexico.com.mx/doble-via/ciencia/xbv13-alineacion-planetas.jpg/ALTERNATES/LANDSCAPE_768/alineacio%CC%81n%20planetas.jpg',
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ), 
                  const SizedBox(height: 8),
                  const Text(
                    'Planetas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height:16),
                  ElevatedButton(
                    onPressed: Questoes,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'VER QUESTÕES',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    )
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(                
                children: [  
                  ClipRRect(
                    child: Image.network(
                      'https://th.bing.com/th/id/OIP.on1vmKf6R4jvLcGerIf-ZAHaE7?pid=ImgDet&rs=1',                    
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ), 
                  const SizedBox(height: 8),
                  const Text(
                    'Galáxias',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height:16),
                  ElevatedButton(
                    onPressed: Questoes,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'VER QUESTÕES',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    )
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(                
                children: [  
                  ClipRRect(
                    child: Image.network(
                      'https://static.mundoeducacao.uol.com.br/mundoeducacao/conteudo_legenda/15608814325d09291867ad0-estrelas-pleiades.jpg',
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ), 
                  const SizedBox(height: 8),
                  const Text(
                    'Estrelas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height:16),
                  ElevatedButton(
                    onPressed: Questoes,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'VER QUESTÕES',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    )
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ]
            
        ),
      )
    );
  }
  void Questoes(){
    Navigator.push(
      context,
       MaterialPageRoute(
        builder: (context){
          return const HomeQuestoes();
        },
      ),
    );
  }
}