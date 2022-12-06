
import 'package:astroapp/domain/indicacoes/principal_domain.dart';
import 'package:astroapp/pages/indicacoes/outrasredes.dart';
import 'package:astroapp/pages/indicacoes/subpages.dart';
import 'package:flutter/material.dart';

class IndicacoesCard extends StatefulWidget {
  final PrincipalDomain principal_domain;
  const IndicacoesCard({Key? key, required this.principal_domain})
      : super(key: key);

  @override
  State<IndicacoesCard> createState() => _IndicacoesCardState();
}

class _IndicacoesCardState extends State<IndicacoesCard> {
  //Future<List<LivrosDomain>> lista_livros = LivrosData.getLivros();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
              widget.principal_domain.tituloCard,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Image.network(
              widget.principal_domain.imagem,
              width: 200,
              height: 100,
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }

  void onTap() {
    subPagesBuilder();
  }

  subPagesBuilder() {
    if (widget.principal_domain.tituloCard == 'Outras Redes') {
      return Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (context) => OutrasRedes(),
        ),
      );
    } else return Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              SubPages(tipoIndicacao: widget.principal_domain.tituloCard)),
    );
  }
}

