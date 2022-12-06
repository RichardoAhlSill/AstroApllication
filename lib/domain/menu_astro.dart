class Menu_astro {
  late final String genero;
  late final String titulo;
  late final String imagem;
  late final dynamic rota;
  late final String conteudo;

  Menu_astro({
    required this.genero,
    required this.imagem,
    required this.titulo,
    required this.rota,
    required this.conteudo,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['genero'] = genero;
    data['imagem'] = imagem;
    data['titulo'] = titulo;
    data['rota'] = rota;
    data['conteudo'] = conteudo;

    return data;
  }
  
  Menu_astro.fromJson(Map<String, dynamic> json){
    genero = json['genero'];
    imagem = json['imagem'];
    titulo = json['titulo'];
    rota = json['rota'];
    conteudo = json['conteudo'];
  }
}
