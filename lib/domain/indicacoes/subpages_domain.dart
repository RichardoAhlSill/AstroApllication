class SubPagesDomain {
  //final String tituloprinc; //PEGAR O TÍRULO DE "TÍTULO CARD" DE PRINCIPAL
  late String tituloCard;
  late String imagem;
  late String texto;
  late String textBotao;
  late String link;
  late String tipoIndicacao;

  SubPagesDomain({
    //required this.tituloprinc, VER ACIMA
    required this.tituloCard,
    required this.imagem,
    required this.texto,
    required this.textBotao,
    required this.link,
    required this.tipoIndicacao,
  });

  SubPagesDomain.fromJson(Map<String, dynamic> json) {
    tituloCard = json['tituloCard'];
    imagem = json['imagem'];
    texto = json['texto'];
    textBotao = json['textBotao'];
    link = json['link'];
    tipoIndicacao = json['tipoIndicacao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    tituloCard = data['tituloCard'];
    imagem = data['imagem'];
    texto = data['texto'];
    textBotao = data['textBotao'];
    link = data['link'];
    tipoIndicacao = data['tipoIndicacao'];

    return data;
  }

}
