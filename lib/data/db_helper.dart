import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    Database database =
        await openDatabase(path, version: 1, onCreate: onCreate);

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        "CREATE TABLE user (username varchar(100) PRIMARY KEY, password varchar(100))";
    await db.execute(sql);

    sql =
        "INSERT INTO user (username, password) VALUES ('astronauta@gmail.com', '40028922')";
    await db.execute(sql);

    //Questões
    String sqlquestion =
        "CREATE TABLE question (imagem varchar(100), titulo varchar(100), alternativa1 varchar(100), alternativa2 varchar(100), alternativa3 varchar(100), alternativa4 varchar(100), alternativa5 varchar(100));";
    await db.execute(sqlquestion);

    sql =
        "INSERT INTO question (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5);";
    await db.execute(sqlquestion);

  }
}
