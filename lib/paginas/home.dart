import 'package:flutter/material.dart';
import 'package:matasanos/paginas/listaMedicamentos.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(),
        //##################### Body #####################
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                child: Text("Hola, 'Usuario'", style: TextStyle(fontSize: 20)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        elevation: 0,
                        fixedSize: const Size(200, 45)),
                    onPressed: () {
                      final destino = MaterialPageRoute(
                                  builder: (_) => ListaMedicamentos());
                              Navigator.push(context, destino);
                    },
                    child: const Text("Lista de medicamentos")),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        elevation: 0,
                        fixedSize: const Size(200, 45)),
                    onPressed: () {
                      showDialog(
                        context: context, 
                        builder: (context) => AlertDialog(
                          title: const Text("Pastillas de hoy"),
                          content: const Text("Tienes que tomarte la pastilla:\n Medicamento A 400mg"),
                          actions: <Widget>[
                            OutlinedButton(
                              child: const Text("Ok"),
                              onPressed: () {
                                Navigator.of(context).pop("ok");
                              }
                            )
                          ],
                        )
                      );
                    },
                    child: const Text("Pastillas de hoy")),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Text(""),
            )
          ]),
        ));
  }
}
