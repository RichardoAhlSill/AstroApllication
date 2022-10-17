import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "questoes.db");
    Database database =
        await openDatabase(
          path,
          version: 2,
          onCreate: onCreate,
        );
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {

    String sqlquestion =
        "CREATE TABLE QUESTOES (imagem varchar(100), titulo varchar(100), alternativa1 varchar(100), alternativa2 varchar(100), alternativa3 varchar(100), alternativa4 varchar(100), alternativa5 varchar(100));";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5) VALUES ('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg', 'Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.', '4', '3', '2', '5', '6');";
    await db.execute(sqlquestion);

    sqlquestion =
    "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5) VALUES ('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg', 'Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.', '4', '3', '2', '5', '6');";
    await db.execute(sqlquestion);

  }
}
