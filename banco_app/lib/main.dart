import 'package:flutter/material.dart';
import 'Pagina_Inicial.dart';
import 'Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/telainicial',
      routes: {
        '/telainicial': (context) => Pagina_Inical(),
        '/Login': (context) => Login(),
      },
    );
  }
}
