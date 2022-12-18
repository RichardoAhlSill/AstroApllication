class PrincipalDomain {
  late String tituloCard;
  late String imagem;

  PrincipalDomain({
    required this.tituloCard,
    required this.imagem,
  });

  PrincipalDomain.fromJson(Map<String, dynamic> json) {
    tituloCard = json['tituloCard'];
    imagem = json['imagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    tituloCard = data['tituloCard'];
    imagem = data['imagem'];

    return data;
  }
}
