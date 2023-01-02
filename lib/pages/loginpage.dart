import 'dart:ffi';
import 'dart:convert';
import 'package:astroapp/data/api/user_api.dart';
import 'package:astroapp/domain/user.dart';
import 'package:astroapp/pages/cadastropage.dart';
import 'package:astroapp/pages/userpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:astroapp/data/bd/user_dao.dart';
import 'package:http/http.dart' as http;

import 'homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 18, 30, 138),
            centerTitle: true,
            title: const Text(
              'AstroApp',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 32),
                        const Icon(
                          Icons.account_circle,
                          size: 150,
                        ),
                        const SizedBox(height: 48),
                        TextFormField(
                          controller: userController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Campo E-mail obrigatório';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'E-mail',
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Campo Senha obrigatório';
                            } else if (value.length < 6) {
                              return 'Campo senha deve conter no mínimo 6 dígitos';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Senha',
                          ),
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                            onPressed: onPressed,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                            )),
                        const SizedBox(height: 32),
                        ElevatedButton(
                            onPressed: TelaCadastro,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                'CADASTRE-SE',
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                            )),
                      ]),
                ),
              ))),
    );
  }

  // ignore: non_constant_identifier_names
  void TelaCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const CadastroUser();
        },
      ),
    );
  }

  usuarios(user, pwd) {
    // return FutureBuilder<List<User>>(
    //   future: lista,
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData) {
    //       List<User> lista = snapshot.data ?? [];

    //       return ListView.builder(
    //         shrinkWrap: true,
    //         physics: const NeverScrollableScrollPhysics(),
    //         itemCount: lista.length,
    //         itemBuilder: (BuildContext context, int index) {
    //           for (var i = 0; i < lista.length; i++) {
    //             if ((lista[index].email == user) &&
    //                 (lista[index].password == pwd)) {
    //               return UserPage(user: lista[index]);
    //             }
    //           }
    //           return LoginPage();
    //         },
    //       );
    //     } else if (snapshot.hasError) {
    //       return Center(child: Text("Tem erro aqui, mano"));
    //     }

    //     return const Center(child: CircularProgressIndicator());
    //   },
    // );
  }

  Future<void> onPressed() async {
    if (_formKey.currentState!.validate()) {
      String user = userController.text;
      String pwd = passwordController.text;

      var resultado = await UsuariosApi().listarUsersApi(user, pwd);
      
          if (resultado) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            );
          } else {
            print("Usuário/Senha incorreto(s)");
            final msg = SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(
                ("usuário/Senha incorretos"),
              ),
            );
          }
        } else {
          print("Formulário inválido, cara");
          print("Formulário inválido, cara");
    }
  }
}
