import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "questoes3.db");
    Database database =
        await openDatabase(
          path,
          version: 1,
          onCreate: onCreate,
        );
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {

    String sqlquestion =
        "CREATE TABLE QUESTOES (imagem varchar(100), titulo varchar(400), alternativa1 varchar(100), alternativa2 varchar(100), alternativa3 varchar(100), alternativa4 varchar(100), alternativa5 varchar(100), alternativa_certa number);";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg', 'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.', '4', '3', '2', '5', '6', 1);";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg', 'Tudo no Universo se move. O que explica a alternância entre a noite e o dia claro? Assinale a única alternativa correta. ', 'À noite a Terra entra na sombra da Lua.', 'A rotação do Sol.', 'A rotação da Terra.', 'À noite o Sol não brilha', 'À noite um Buraco Negro bloqueia a luz do Sol. ', 3);";
    await db.execute(sqlquestion);

    sqlquestion =
    "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg', 'Vamos fazer uma viagem espacial. Vamos começar indo para omesmo local onde foram os astronautas, em 1969. Qual é o nome deste lugar? Uma dica: este lugar fica “pertinho”, ou seja, só cerca de 400.000 quilômetros. Assinale a únicaalternativa correta.', 'Plutão', 'Urano', 'Marte', 'Vênus', 'Lua', 5);";
    await db.execute(sqlquestion);


  }
}
