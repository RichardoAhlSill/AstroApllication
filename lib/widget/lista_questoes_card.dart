import 'package:flutter/material.dart';
import 'package:astroapp/domain/questoes.dart';

class CardQuestoes extends StatefulWidget {
  final Questoes questoes;

  const CardQuestoes({
    Key? key,
    required this.questoes,
  }) : super(key: key);

  @override
  _CardQuestoesState createState() => _CardQuestoesState();
}

class _CardQuestoesState extends State<CardQuestoes> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            buildImage(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Text(
                      widget.questoes.titulo,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0F2179),
                      ),
                      onPressed: (){
                        verificarResposta(1);
                      },
                      child: Text(
                        widget.questoes.alternativa1,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0F2179),
                      ),
                      onPressed: (){
                        verificarResposta(2);
                      },
                      child: Text(
                        widget.questoes.alternativa2,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0F2179),
                      ),
                      onPressed: (){
                        verificarResposta(3);
                      },
                      child: Text(
                        widget.questoes.alternativa3,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0F2179),
                      ),
                      onPressed: (){
                        verificarResposta(4);
                      },
                      child: Text(
                        widget.questoes.alternativa4,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF0F2179),
                      ),
                      onPressed: (){
                        verificarResposta(5);
                      },
                      child: Text(
                        widget.questoes.alternativa5,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                  ]
              ),
            )
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(8),
          ),
          child: Image.network(widget.questoes.imagem),
        ),
      ],
    );
  }

  verificarResposta(int resposta){
    if(resposta == widget.questoes.alternativaCerta){
      acertouMensagem();
    } else {
      errouMensagem();
    }
  }

  acertouMensagem() {
    AlertDialog alerta = const AlertDialog(
      title: Text(
        "Parábens! Você Acertou!",
        style: TextStyle(
          color: Color(0xFF3E7F34),
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
  errouMensagem() {
    AlertDialog alerta = const AlertDialog(
      title: Text(
        "Que Pena, Você Errou! Tente de novo! ",
        style: TextStyle(
          color: Color(0xFFAA0718),
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}