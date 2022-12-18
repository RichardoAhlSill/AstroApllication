
import 'package:astroapp/domain/indicacoes/subpages_domain.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubPagesCard extends StatefulWidget {
  final SubPagesDomain lista_subpages;
  const SubPagesCard({Key? key, required this.lista_subpages}) : super(key: key);

  @override
  State<SubPagesCard> createState() => _SubPagesCardState();
}


class _SubPagesCardState extends State<SubPagesCard> {

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          margin: EdgeInsets.only(bottom: 24),

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
                widget.lista_subpages.tituloCard,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Image.network(
                widget.lista_subpages.imagem,
                width: 200,
                height: 100,
              ),
              SizedBox(height: 16),
              Text(widget.lista_subpages.texto),
              
              ElevatedButton(
                onPressed: () => abrirSubPage(widget.lista_subpages.link), 
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text (
                    widget.lista_subpages.textBotao,
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
      ],
    );
  }

  Future<void> abrirSubPage(String link) async {

    Uri _url = Uri.parse(
      link
    );

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }

    
  }
}
