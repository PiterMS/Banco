import 'package:banco_app/Registrar.dart';
import 'package:banco_app/Telapix.dart';
import 'package:flutter/material.dart';
import 'Pagina_Inicial.dart';
import 'Login.dart';

void main() async {
  runApp(
    MaterialApp(
      title: 'ByteBank',
      theme: ThemeData(),
      initialRoute: '/Registrar',
      routes: {
        '/telainicial': (context) => Pagina_Inical(),
        '/Login': (context) => Login(),
        '/Registrar': (context) => Registrar(),
        '/pix': (context) => Telapix(),
      },
    ),
  );
}
