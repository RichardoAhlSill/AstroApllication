import 'package:astroapp/data/bd/user_dao.dart';
import 'package:astroapp/domain/user.dart';
import 'package:flutter/material.dart';

class CadastroUser extends StatefulWidget {
  const CadastroUser({Key? key}) : super(key: key);

  @override
  State<CadastroUser> createState() => _CadastroUserState();
}

class _CadastroUserState extends State<CadastroUser> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController officeController = TextEditingController();
  TextEditingController preferenceAreaController = TextEditingController();

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
                    return 'Campo e-mail obrigatório';
                  }
                  return null;
                },
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'E-mail'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo senha obrigatório';
                  } else if (value.length < 6) {
                    return 'Senha deve possuir no mínimo 8 digitos';
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Senha'),
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
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(primary: Colors.black),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Cadastrar Usuário',
                    style: TextStyle(fontSize: 20, color: Colors.yellow),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String userDigitado = userController.text;
      String emailDigitado = emailController.text;
      String passwordDigitado = passwordController.text;  
      String ageDigitado = ageController.text;
      String countryDigitado = countryController.text;
      String officeDigitado = officeController.text;
      String preferenceAreaDigitado = preferenceAreaController.text;

      User user = User(
        username: userDigitado,
        email: emailDigitado,
        password: passwordDigitado,
        age: ageDigitado,
        country: countryDigitado,
        office: officeDigitado,
        preferenceArea: preferenceAreaDigitado,
        );
      await UserDao().salvarUser(user: user);

      showSnackBar('Usuário foi salvo com sucesso!');
      Navigator.pop(context);
    } else {
      showSnackBar("Erro na validação");
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
