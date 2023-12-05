import 'package:flutter/material.dart';
import 'package:matasanos/paginas/home.dart';

class AccesoACuenta extends StatelessWidget {
  const AccesoACuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(),
        //##################### Body #####################
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding:
                  EdgeInsets.all(20),
              child: Text(
                "MATASANOS",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                "Nombre",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.center,
              child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: TextField())),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "1º Apellido",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.center,
              child: Padding(padding: EdgeInsets.all(20), child: TextField())),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Contraseña",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.center,
              child: Padding(padding: EdgeInsets.all(20), child: TextField())),
          Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          elevation: 0,
                          fixedSize: const Size(150, 40)),
                      onPressed: () {
                        final destino =
                            MaterialPageRoute(builder: (_) => const Home());
                        Navigator.push(context, destino);
                      },
                      child: const Text("Entrar"),
                    ),
                  )))
        ])));
  }
}
