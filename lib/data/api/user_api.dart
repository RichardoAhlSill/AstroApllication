import 'dart:convert';
import 'dart:async';

import 'package:astroapp/domain/user.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class UsuariosApi {
  String baseUrl = "https://api-production-b057.up.railway.app/";

  Future<List<User>> listarFullUsersApi() async {
    var url = Uri.parse(baseUrl + "users");
    var response = await http.get(url);

    List<User> listaUser = <User>[];
    try {
      if (response.statusCode == 200) {
        var result = (jsonDecode(utf8.decode(response.bodyBytes)));

        for (var json in result) {
          User user = User.fromApiJson(json);
          listaUser.add(user);
        }
      }
    } catch (e) {
      throw Exception("Erro");
    }
    return listaUser;
  }

  Future<Map<String, dynamic>> listEspecificUserApi(String id) async {
    String id = await filtrarIdPorNome();

    var url = Uri.parse(baseUrl + "users/$id");
    var response = await http.get(url);
    User userString;
    userString = User(
        name: 'Marcos',
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
  
  Future<String> filtrarIdPorNome() async {
    var urlNome = Uri.parse(baseUrl + "users/");
    var response = await http.get(urlNome);
    String nome;
    if (response.statusCode == 200) {
        var result = (jsonDecode(utf8.decode(response.bodyBytes)));

        print(result);

        for (var json in result ){
          // fazer um if
        }

        /*for (var json in result) {
          user = User.fromApiJson(json);
        }*/
      }
    return 'oi';
  }
}
