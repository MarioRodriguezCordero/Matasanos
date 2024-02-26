import 'package:flutter/material.dart';
import 'package:matasanos/paginas/crearCuenta_3.dart';
import 'package:matasanos/paginas/pantallaPrincipal.dart';
import 'package:matasanos/tema/temaActual.dart';
import 'package:provider/provider.dart';

class CrearCuenta_2 extends StatelessWidget {
  const CrearCuenta_2({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeLoader>(context).actualTheme;

    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(),
        //##################### Body #####################
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "MATASANOS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: tema.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(
                  "Nombre",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: tema.colorScheme.primary),
                ),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    child: TextField(
                      style: TextStyle(color: tema.colorScheme.secondary),
                    ))),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "1º Apellido",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: tema.colorScheme.primary),
                ),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      style: TextStyle(color: tema.colorScheme.secondary),
                    ))),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "2º Apellido",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: tema.colorScheme.primary),
                ),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      style: TextStyle(color: tema.colorScheme.secondary),
                    ))),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: tema.colorScheme.background,
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
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: tema.colorScheme.background,
                                elevation: 0,
                                fixedSize: const Size(150, 40)),
                            onPressed: () {
                              final destino = MaterialPageRoute(
                                  builder: (_) => const CrearCuenta_3());
                              Navigator.push(context, destino);
                            },
                            child: const Text("Siguiente"),
                          ),
                        ))
                  ],
                ))
          ],
        )));
  }
}
