import 'dart:io';
import 'package:flutter/material.dart';
import 'package:astroapp/domain/user.dart';
import 'package:astroapp/pages/loginpage.dart';
import '../data/user_dao.dart';

class UserPage extends StatefulWidget {

  const UserPage({Key? key}):super(key: key);

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
          title: const Text('AstroApp',
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
              'Marcos',
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
                const Text(
                  'E-mail: mfs22@aluno.ifal.edu.br',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),
                const Text(
                  'Cidade: Coité do Nóia - Alagoas',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),
                const Text(
                  'País: Brasil',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),
                const Text(
                  'Cargo: Técnico em Informática',
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
              onTap: (){},
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
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
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
              onTap: (){},
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
}





