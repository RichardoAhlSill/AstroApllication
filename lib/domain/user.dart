class User {
  late String username;
  late String password;
  late String email;
  late String age;
  late String country;
  late String office;
  late String preferenceArea;

  User({
    required this.username,
    required this.password,
    required this.email,
    required this.age,
    required this.country,
    required this.office,
    required this.preferenceArea,
  });

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
		email = json['email'];
    password = json['password'];
    username = json['name'];
		password = json['password'];
		age = json['age'];
		country = json['country'];
		office = json['office'];
		preferenceArea = json['preferenceArea'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username; 
		data['email'] = email; 
    data['password'] = password; 
		data['age'] = age; 
		data['country'] = country; 
		data['office'] = office; 
		data['preferenceArea'] = preferenceArea; 
    return data;
  }

  User.fromApiJson(Map<String, dynamic> json) {
    username = json['name'];
		email = json['email'];  
    password = json['password'];
		age = json['age'];
		country = json['country'];
		office = json['office'];
		preferenceArea = json['preferenceArea'];
  }
}
