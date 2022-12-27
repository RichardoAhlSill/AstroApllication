class User {
  late String name;
  late String email;
  late String password;
  late String age;
  late String country;
  late String office;
  late String preferenceArea;

  User({required this.name,
  required this.email, 
  required this.password, 
  required this.age,  
  required this.country, 
  required this.office, 
  required this.preferenceArea});

  /*User.fromJson(Map<String, dynamic> json) {
    name = json['username'];
    password = json['password'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = name;
    data['password'] = password;
    return data;
  }*/

  User.fromApiJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    age = json['age'];
    country = json['country'];
    office = json['office'];
  }
}
