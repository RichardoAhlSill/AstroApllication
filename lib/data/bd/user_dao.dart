/*import 'package:astroapp/data/bd/db_helper.dart';
import 'package:astroapp/domain/user.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {
  Future<void> salvarUser({required User user}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    await db.insert('user', user.toJson());
  }

  autenticar(
      {required String user,
      required String password,
      required String user2,
      required String password2}) {
    print("Verdadeiro " + user + password + ":" + user2 + password2);
    if (password == password2) {
      // if(user == user2){
      //   print("Olá");
      //   return true;
      // }
      print('olá');
      return true;
    }
    return false;
  }

  listarUsers() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user;';
    final result = await db.rawQuery(sql);

    List<User> lista = <User>[];
    for (var json in result) {
      User usuario = User.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }
}*/
