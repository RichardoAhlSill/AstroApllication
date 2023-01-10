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

  Future<List<User>> listarFullUsersApi() async {
    var url = Uri.parse(baseUrl + "users");
    List<User> users = <User>[];
    return users;
  }

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
    await http.put(url, body: {
      "name": user.username,
      "email": user.email,
      "password": user.password,
      "age": user.age,
      "country": user.country,
      "office": user.office,
      "preferenceArea": user.preferenceArea,
    });
    logado = user;
  }

  manterUser() {
    return logado;
  }

  Future<Map<String, dynamic>> listEspecificUserApi(String emailUser) async {
    String id = await filtrarIdPorNome(emailUser);

    var url = Uri.parse(baseUrl + "users/$id");
    var response = await http.get(url);
    User userString;
    userString = User(
        id: "8888",
        username: 'Marcos',
        email: 'mfs',
        password: '123',
        age: '18',
        country: 'Brasil',
        office: 'Estudante',
        preferenceArea: 'Astronomia');

    Map<String, dynamic> user = userString.toApiJson();

    try {
      if (response.statusCode == 200) {
        var result = (jsonDecode(utf8.decode(response.bodyBytes)));

        print(result);

        /*for (var json in result) {
          user = User.fromApiJson(json);
        }*/
      }
    } catch (e) {
      throw Exception("Erro");
    }
    return user;
  }

  Future<String> filtrarIdPorNome(String emailUser) async {
    var urlNome = Uri.parse(baseUrl + "users/");
    var response = await http.get(urlNome);
    String nome;
    if (response.statusCode == 200) {
      var result = (jsonDecode(utf8.decode(response.bodyBytes)));

      print(result);

      for (var json in result) {
        // fazer um if
      }

      /*for (var json in result) {
          user = User.fromApiJson(json);
        }*/
    }
    return 'oi';
  }
}
