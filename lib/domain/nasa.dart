class Nasa {
  late String serviceVersion;
  late String copyright;
  late String date;
  late String explanation;
  late String hdurl;
  late String mediaType;
  late String title;
  late String url;

  Nasa({
    required this.serviceVersion,
    required this.copyright,
    required this.date,
    required this.explanation,
    required this.hdurl,
    required this.mediaType,
    required this.title,
    required this.url,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['serviceVersion'] = serviceVersion;
    data['copyright'] = copyright;
    data['date'] = date;
    data['explanation'] = explanation;
    data['hdurl'] = hdurl;
    data['media_type'] = mediaType;
    data['title'] = title;
    data['url'] = url;
    return data;
  }

  Nasa.fromJson(Map<String, dynamic> json) {
    serviceVersion = json['serviceVersion'];
    copyright = json['copyright'];
    date = json['date'];
    explanation = json['explanation'];
    hdurl = json['hdurl'];
    mediaType = json['mediaType'];
    title = json['title'];
    url = json['url'];
  }

  Nasa.fromApiNasaJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
    date = json['date'];
    explanation = json['explanation'];
    hdurl = json['hdurl'];
    mediaType = json['media_type'];
    serviceVersion = json['service_version'];
    title = json['title'];
    url = json['url'];
  }
}
