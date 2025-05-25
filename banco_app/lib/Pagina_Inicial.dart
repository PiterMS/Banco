import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
        title: Text('Projeto Flutter'),
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
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 97, 165, 220),
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
                        child: Text('Investimetos'),
                      ),
                    ],
                  ),
                ),
              ),

              //A 'div' para os flutter
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
                      'Dolar (US):\n ',
                      style: GoogleFonts.bebasNeue(
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ),
              ),

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
                      'Euro (EUR):\n ',
                      style: GoogleFonts.bebasNeue(
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ),
                ),
              ),
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
                      'Bitcoin (BTC):\n ',
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
