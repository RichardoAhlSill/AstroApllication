import 'package:astroapp/data/indicacoes_dao.dart';
import 'package:astroapp/domain/indicacoes/subpages_domain.dart';
import 'package:astroapp/widget/indicacoes/sub_pages_card.dart';
import 'package:flutter/material.dart';

class SubPages extends StatefulWidget {
  final String tipoIndicacao;
  const SubPages({Key? key, required this.tipoIndicacao}) : super(key: key);

  @override
  State<SubPages> createState() => _SubPagesState();
}

class _SubPagesState extends State<SubPages> {
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
              widget.tipoIndicacao,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            subPagesListView(),
          ],
        ),
      ),
    );
  }

  subPagesListView() {
    Future<List<SubPagesDomain>> lista_subpages =
          IndicacoesDAO.listarSubpagesIndicacoes(widget.tipoIndicacao);
    
    return FutureBuilder<List<SubPagesDomain>>(
          future: lista_subpages,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<SubPagesDomain> lista_subpages = snapshot.data ?? [];

              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista_subpages.length,
                itemBuilder: (context, index) {
                  return SubPagesCard(lista_subpages: lista_subpages[index]);
                },
              );
            }
            return Center(child: CircularProgressIndicator());
          }
        );
    
  }

}
