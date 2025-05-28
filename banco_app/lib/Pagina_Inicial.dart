import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'API_FInanceira.dart';

class Pagina_Inical extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TelaInicio();
  }
}

class _TelaInicio extends State<Pagina_Inical> {
  String dolar = '';
  String euro = '';
  String bitcoin = '';

  @override
  void initState() {
    super.initState();
    fetchExchangeRates();
  }

  Future<void> fetchExchangeRates() async {
    try {
      final data = await getData();
      setState(() {
        dolar = data['results']['currencies']['USD']['buy'].toString();
        euro = data['results']['currencies']['EUR']['buy'].toString();
        bitcoin = data['results']['cryptocurrencies']['BTC']['buy'].toString();
      });
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ByteBank'),
        backgroundColor: Color.fromARGB(255, 64, 146, 214),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Container(
                  height: 150,
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 97, 165, 220),
                  ),
                  child: Text(
                    ' Seu Saldo: R\$ 0 \n ',
                    style: GoogleFonts.bebasNeue(
                      textStyle: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                ),
              ),

              Center(
                child: Container(
                  height: 80,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('Pix')),
                      ElevatedButton(onPressed: () {}, child: Text('Boleto')),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Investimentos'),
                      ),
                    ],
                  ),
                ),
              ),
              // Dólar
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  width: 300.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(166, 60, 62, 66),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Align(
                    alignment: Alignment(-0.7, -0.2),
                    child: Text(
                      'Dólar (US):\n $dolar',
                      style: GoogleFonts.bebasNeue(
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ),
              ),
              // Euro
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  width: 300.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(166, 60, 62, 66),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Align(
                    alignment: Alignment(-0.7, -0.2),
                    child: Text(
                      'Euro (EUR):\n $euro',
                      style: GoogleFonts.bebasNeue(
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
