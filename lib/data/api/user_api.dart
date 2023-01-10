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
    var url = Uri.parse(baseUrl + "/users");
    late List<User> users = <User>[];

    var response = await http.get(url);
    var result = jsonDecode(response.body);

    for (var json in result) {
      User user = User.fromApiJson(json);
      users.add(user);
    }

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

  Future<User> listEspecificUserApi(String emailUser) async {
    String id = await filtrarIdPorNome(emailUser);
    print(id);

    var url = Uri.parse(baseUrl + "/users/$id");
    var response = await http.get(url);

    //Map<String, dynamic> user = userString.toApiJson();
    late User userEspecific;
    try {
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        print(result);

        userEspecific = User.fromApiJson(result);
      }
    } catch (e) {
      print('Erro tal: \n\n');
      print(e);
    }
    return userEspecific;
  }

  Future<String> filtrarIdPorNome(String emailUser) async {
    var urlNome = Uri.parse(baseUrl + "/users/");
    var response = await http.get(urlNome);
    String nome;
    String id = "";
    if (response.statusCode == 200) {
      var result = (jsonDecode(utf8.decode(response.bodyBytes)));

      //print(result);

      List<User> users = <User>[];
      //List<Map<String, dynamic>> user2 = [];
      late User user;
      for (var json in result) {
        //print(json);
        user = User.fromApiJson(json);
        //Map<String, dynamic> user3 = user.toApiJson();
        //user2.add(user3);
        users.add(user);
      }

      //Map<String, dynamic> user2 = user.toApiJson();
      for (int i = 0; i < users.length; i++) {
        //print(user2);
        print(users[i].email);
        if (users[i].email == emailUser) {
          id = users[i].id;
          return id;
        }
      }
      /*for (var json in result) {
          user = User.fromApiJson(json);
        }*/
    }
    return id;
  }
}
