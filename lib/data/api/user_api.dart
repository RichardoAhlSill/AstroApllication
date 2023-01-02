import 'dart:convert';
import 'dart:async';
import 'dart:ffi';
import 'package:astroapp/data/bd/user_dao.dart';
import 'package:astroapp/domain/user.dart';
import 'package:http/http.dart' as http;

class UsuariosApi {
  String baseUrl = "https://api-production-b057.up.railway.app";


  listarUsersApi(user1, pwd) async {
    var url = Uri.parse(baseUrl + "/users");
    var response = await http.get(url); 

    try {
      if (response.statusCode == 200) {
        var result = (jsonDecode(utf8.decode(response.bodyBytes)));

        for (var json in result) {
          User user = User.fromApiJson(json);

          if ((user1 == user.email) && (pwd == user.password)) {
            return true;
          }
        }
      }
    } catch (e) {
      throw Exception('erro');
    }
    return false;
  }
}
