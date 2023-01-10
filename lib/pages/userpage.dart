import 'dart:io';
import 'package:astroapp/data/api/user_api.dart';
import 'package:astroapp/pages/alterarDadosUser.dart';
import 'package:astroapp/pages/trocarUser.dart';
import 'package:flutter/material.dart';
import 'package:astroapp/domain/user.dart';
import 'package:astroapp/pages/loginpage.dart';
import '../data/bd/user_dao.dart';

class UserPage extends StatefulWidget {
  User user = UsuariosApi().manterUser();

  UserPage({
    Key? key,
  }) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 18, 30, 138),
          centerTitle: true,
          title: const Text(
            'AstroApp',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 48),
            Container(
              child: const Icon(
                Icons.account_circle,
                size: 150,
              ),
            ),
            Text(
              widget.user.username,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 48),
                Text(
                  "E-mail: " + widget.user.email,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Idade: " + widget.user.age,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "País: " + widget.user.country,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Cargo: " + widget.user.office,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Área de preferência: " + widget.user.preferenceArea,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            InkWell(
              onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlterarDadosUser()))),
              child: Wrap(
                children: [
                  Icon(
                    Icons.edit,
                    size: 25,
                  ),
                  Text(
                    'Alterar Dados',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrocarUser(),
                  ),
                );
              },
              child: Wrap(
                children: [
                  Icon(
                    Icons.autorenew_outlined,
                    size: 25,
                  ),
                  Text(
                    'Trocar Usuário',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: deleteUser,
              child: Wrap(
                children: [
                  Icon(
                    Icons.delete_outlined,
                    size: 25,
                  ),
                  Text(
                    'Remover Usuário',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  deleteUser() {
    AlertDialog alerta = const AlertDialog(
      title: Text(
        "Tem certeza que deseja excluir o usuário?",
        style: TextStyle(
          color: Color(0xFF3E7F34),
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      //Alterar aqui
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}
