import 'package:astroapp/data/bd/db_helper.dart';
import 'package:astroapp/domain/menu_astro.dart';
import 'package:sqflite/sqflite.dart';

class AssuntosDao {
  /*Future<List<Menu_astro>> listarPacotes() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sqlassunto = "SELECT * FROM assuntos;";
    final result = await db.rawQuery(sqlassunto);

    List<Menu_astro> lista = <Menu_astro>[];
    for(var json in result){

      Menu_astro assuntos = Menu_astro.fromJson(json);
      lista.add(assuntos);

    }

    return lista;
  }*/

  static Future<List<Menu_astro>> listarPacotes(String tipoGenero) async {
    DBHelper subHelper = DBHelper();
    Database db = await subHelper.initDB();

    String sqlassunto = "SELECT * FROM assuntos WHERE genero = ?;";
    final result = await db.rawQuery(sqlassunto, [tipoGenero]);

    List<Menu_astro> lista = <Menu_astro>[];
    for (var json in result) {
      Menu_astro assuntos = Menu_astro.fromJson(json);
      lista.add(assuntos);
    }
    return lista;
  }

  static Future<List<Menu_astro>> listarAssuntos(String rota) async {
    DBHelper subHelper = DBHelper();
    Database db = await subHelper.initDB();

    String sqlassunto = "SELECT * FROM assuntos WHERE rota = ?;";
    final result = await db.rawQuery(sqlassunto, [rota]);

    List<Menu_astro> listaAssuntos = <Menu_astro>[];
    for (var json in result) {
      Menu_astro assuntos = Menu_astro.fromJson(json);
      listaAssuntos.add(assuntos);
    }
    for (var i in listaAssuntos) {
      print(i.titulo);
    }
    return listaAssuntos;
  }
}
