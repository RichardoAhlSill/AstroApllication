class Nasa {
  late String apod_site;
  late String copyright;
  late String date;
  late String description;
  late String hdurl;
  late String media_type;
  late String title;
  late String url;

  Nasa({
    required this.apod_site,
    required this.copyright,
    required this.date,
    required this.description,
    required this.hdurl,
    required this.media_type,
    required this.title,
    required this.url,
  });

  Nasa.fromJson(Map<String, dynamic> json) {
    apod_site = json['apod_site'];
    copyright = json['copyright'];
    date = json['date'];
    description = json['description'];
    hdurl = json['hdurl'];
    media_type = json['media_type'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['apod_site'] = this.apod_site;
    data['copyright'] = this.copyright;
    data['date'] = this.date;
    data['description'] = this.description;
    data['hdurl'] = this.hdurl;
    data['media_type'] = this.media_type;
    data['title'] = this.title;
    data['url'] = this.url;

    return data;
  }
}
