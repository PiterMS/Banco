import 'package:flutter/material.dart';

class Registrar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Registrar();
  }
}

class _Registrar extends State<Registrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ByteBank - Registrar')),
      body: Center(
        child: Container(
          width: 450,
          height: 600,
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 350,
                height: 100, // Ajuste a altura conforme necessário
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(height: 20), // Espaçamento entre os campos
              Container(
                width: 350,
                height: 100, // Ajuste a altura conforme necessário
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(height: 20), // Espaçamento entre os campos
              Container(
                width: 350,
                height: 100, // Ajuste a altura conforme necessário
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: const OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/Login');
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
