import 'package:flutter/material.dart';
import 'package:matasanos/paginas/crearCuenta_2.dart';
import 'package:matasanos/paginas/pantallaPrincipal.dart';

class CrearCuenta_1 extends StatelessWidget {
  const CrearCuenta_1({super.key});

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
                  EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
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
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "¿Para quien es la cuenta?",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ))),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      elevation: 0,
                      fixedSize: const Size(150, 40)),
                  onPressed: () {
                    final destino =
                        MaterialPageRoute(builder: (_) => const CrearCuenta_2());
                    Navigator.push(context, destino);
                  },
                  child: const Text("Para Mi"),
                ),
              )),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      elevation: 0,
                      fixedSize: const Size(150, 40)),
                  onPressed: () {
                    final destino =
                        MaterialPageRoute(builder: (_) => const CrearCuenta_2());
                    Navigator.push(context, destino);
                  },
                  child: const Text("Para Otro"),
                ),
              )),
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
                      final destino = MaterialPageRoute(
                          builder: (_) => const PantallaPrincipal());
                      Navigator.push(context, destino);
                    },
                    child: const Text("Volver"),
                  ),
                )),
          )
        ])));
  }
}
