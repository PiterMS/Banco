import 'package:flutter/material.dart';

class Telapix extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TelaPix();
  }
}

class _TelaPix extends State<Telapix> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar ao Saldo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Valor a adicionar',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double? valor = double.tryParse(_controller.text);
                if (valor != null) {
                  Navigator.pop(
                    context,
                    valor,
                  ); // Retorna o valor para a Pagina_Inical
                } else {
                  // Exibe um alerta se o valor não for válido
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor, insira um valor válido.'),
                    ),
                  );
                }
              },
              child: Text('Adicionar a Saldo'),
            ),
          ],
        ),
      ),
    );
  }
}
