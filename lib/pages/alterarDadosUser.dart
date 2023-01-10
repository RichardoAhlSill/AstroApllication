import 'package:astroapp/data/api/user_api.dart';
import 'package:astroapp/data/bd/user_dao.dart';
import 'package:astroapp/domain/user.dart';
import 'package:flutter/material.dart';

class AlterarDadosUser extends StatefulWidget {
  const AlterarDadosUser({Key? key}) : super(key: key);

  @override
  State<AlterarDadosUser> createState() => _AlterarDadosUserState();
}

class _AlterarDadosUserState extends State<AlterarDadosUser> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController userController = TextEditingController();  
  TextEditingController ageController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController officeController = TextEditingController();
  TextEditingController preferenceAreaController = TextEditingController();

  User logado = UsuariosApi().manterUser();

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
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 48),
              const Icon(
                Icons.account_circle,
                size: 150,
              ),
              const SizedBox(height: 42),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo usuário obrigatório';
                  }
                  return null;
                },
                controller: userController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Usuário'),
              ),                          
              const SizedBox(height: 16),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo idade obrigatório';
                  }
                  return null;
                },
                controller: ageController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Idade'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo País obrigatório';
                  }

                  return null;
                },
                controller: countryController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'País'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo trabalho obrigatório';
                  }
                  return null;
                },
                controller: officeController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Cargo'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo área de preferência obrigatório';
                  }                
                  return null;
                },
                controller: preferenceAreaController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Assunto de maior relevância do aplicativo'),
              ),
              const SizedBox(height: 32),
              ElevatedButton(onPressed: onPressed, child: Text('Alterar dados'))
            ],
          ),
        ),
      ),
    );
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      
      String userDigitado = userController.text;      
      String ageDigitado = ageController.text;
      String countryDigitado = countryController.text;
      String officeDigitado = officeController.text;
      String preferenceAreaDigitado = preferenceAreaController.text;

      User user = User(
        id: logado.id,
        username: userDigitado,
        email: logado.email,
        password: logado.password,
        age: ageDigitado,
        country: countryDigitado,
        office: officeDigitado,
        preferenceArea: preferenceAreaDigitado,
        );

      UsuariosApi().atualizarUser(user: user);

      showSnackBar('Usuário foi atualizado com sucesso!');
      Navigator.pop(context);
    } else {
      showSnackBar("Erro ao atualizar");
    }
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // onPressedRegister() {}
}
            