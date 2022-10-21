import 'package:astroapp/data/db_helper.dart';
import 'package:astroapp/domain/questoes.dart';
import 'package:sqflite/sqflite.dart';

class QuestoesDao {

  Future<List<Questoes>> listarQuestoes() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sqlquestion = "SELECT * FROM QUESTOES;";
    final result = await db.rawQuery(sqlquestion);

    List<Questoes> lista = <Questoes>[];
    for(var json in result){

      Questoes questoes = Questoes.fromJson(json);
      lista.add(questoes);

    }

    return lista;
  }

}