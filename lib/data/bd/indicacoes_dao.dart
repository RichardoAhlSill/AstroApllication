import 'package:astroapp/data/db_helper.dart';
import 'package:astroapp/domain/indicacoes/principal_domain.dart';
import 'package:astroapp/domain/indicacoes/redes_domain.dart';
import 'package:astroapp/domain/indicacoes/subpages_domain.dart';
import 'package:sqflite/sqflite.dart';

class IndicacoesDAO {
  static Future<List<PrincipalDomain>> listarPrincipalIndicacoes() async {
    DBHelper indHelper = DBHelper();
    Database db = await indHelper.initDB();

    String sql = 'SELECT * FROM PRINCIPAL_INDICACOES';
    final result = await db.rawQuery(sql);

    List<PrincipalDomain> lista_principal = <PrincipalDomain>[];
    for (var json in result) {
      PrincipalDomain principal = PrincipalDomain.fromJson(json);
      lista_principal.add(principal);
    }
    return lista_principal;
  }

  static Future<List<SubPagesDomain>> listarSubpagesIndicacoes(
      String tipoIndicacao) async {
    DBHelper subHelper = DBHelper();
    Database db = await subHelper.initDB();

    String sql = "SELECT * FROM subpages_indicacoes WHERE tipoIndicacao = ?";
        //"SELECT * FROM subpages_indicacoes WHERE tipoIndicacao = '$tipoIndicacao';"; => erro: SQL injeption!
    final result = await db.rawQuery(sql, [tipoIndicacao]);

    List<SubPagesDomain> lista_subpages = <SubPagesDomain>[];
    for (var json in result) {
      SubPagesDomain subpages = SubPagesDomain.fromJson(json);
      lista_subpages.add(subpages);
    }
    return lista_subpages;
  }

  static Future<List<RedesDomain>> listarRedesIndicacoes() async {
    DBHelper redesHelper = DBHelper();
    Database db = await redesHelper.initDB();

    String sql = 'SELECT * FROM REDES_INDICACOES';
    final result = await db.rawQuery(sql);

    List<RedesDomain> lista_redes = <RedesDomain>[];
    for (var json in result) {
      RedesDomain redes = RedesDomain.fromJson(json);
      lista_redes.add(redes);
    }
    return lista_redes;
  }
}
