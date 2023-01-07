import 'dart:io';

import 'package:astroapp/pages/assuntosQuest_page.dart';
import 'package:astroapp/pages/cadastropage.dart';
import 'package:astroapp/pages/indicacoes/principal.dart';
import 'package:astroapp/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'pages/homePage.dart';
//import 'package:url_launcher/url_launcher.dart';

class PostHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(context){
    return super.createHttpClient(context)
    ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = new PostHttpOverrides();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
