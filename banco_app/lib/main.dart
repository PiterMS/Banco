import 'package:flutter/material.dart';

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

class Login extends StatefulWidget {
  const Login({super.key}); // Adicionei construtor constante

  @override
  State<StatefulWidget> createState() {
    // Corrigi de createSate para createState
    return _LoginState(); // Renomeei para _LoginState para seguir convenções
  }
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'), // Adicionei título
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu e-mail';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira sua senha';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navega para a tela inicial após login válido
                    Navigator.pushReplacementNamed(context, '/telainicial');
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }
}

class Pagina_Inical extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TelaInicio();
  }
}

class _TelaInicio extends State<Pagina_Inical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20.0),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Pix')),
                ElevatedButton(onPressed: () {}, child: Text('Boleto')),
                ElevatedButton(onPressed: () {}, child: Text('Investimetos')),
              ],
            ),
          ),

          //A 'div' para os flutter
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Container(
              width: 350.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: const Color.fromARGB(166, 60, 62, 66),
              ),
              child: Text('Dolar:', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
