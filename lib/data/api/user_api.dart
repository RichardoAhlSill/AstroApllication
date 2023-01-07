import 'dart:convert';
import 'dart:async';
import 'dart:ffi';
import 'package:astroapp/data/bd/user_dao.dart';
import 'package:astroapp/domain/user.dart';
import 'package:http/http.dart' as http;

User logado = User(
    id: "",
    username: "",
    password: "",
    email: "",
    age: "",
    country: "",
    office: "",
    preferenceArea: "");

class UsuariosApi {
  String baseUrl = "https://api-production-b057.up.railway.app";

  autenticar(user1, pwd) async {
    var url = Uri.parse(baseUrl + "/users");
    var response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        var result = (jsonDecode(utf8.decode(response.bodyBytes)));

        for (var json in result) {
          User user = User.fromApiJson(json);

          if ((user1 == user.email) && (pwd == user.password)) {
            logado = user;
            return user;
          }
        }
      }
    } catch (e) {
      throw Exception(e);
    }

    return null;
  }

  cadastrar({required User user}) async {
    try {
      var response =
          await http.post(Uri.parse(baseUrl + "/users/create"), body: {
        "name": user.username,
        "email": user.email,
        "password": user.password,
        "age": user.age,
        "country": user.country,
        "office": user.office,
        "preferenceArea": user.preferenceArea,
      });
    } catch (e) {
      print(e);
    }
  }

  atualizarUser({required User user}) async {
    var url = Uri.parse(baseUrl + "/users/create/${user.id}");
    await http.put(
      url,
       body: {
        "name": user.username,
        "email": user.email,
        "password": user.password,
        "age": user.age,
        "country": user.country,
        "office": user.office,
        "preferenceArea": user.preferenceArea,
       }
       );
       logado = user;
  }

  manterUser() {
    return logado;
  }
}
