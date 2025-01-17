import 'package:flutter/material.dart';
import 'package:matasanos/paginas/configuracion.dart';
import 'package:matasanos/paginas/listaMedicamentos.dart';
import 'package:matasanos/paginas/pantallaPrincipal.dart';
import 'package:matasanos/tema/temaActual.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeLoader>(context).actualTheme;

    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                color: tema.colorScheme.secondary,
              ),
              onPressed: () {
                final destino =
                    MaterialPageRoute(builder: (_) => const Configuracion());
                Navigator.push(context, destino);
              })
        ]),
        //##################### Body #####################
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
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
                padding: EdgeInsets.all(20),
                child: Text("Hola, 'Usuario'",
                    style: TextStyle(
                        fontSize: 20, color: tema.colorScheme.secondary)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tema.colorScheme.background,
                        elevation: 0,
                        fixedSize: const Size(200, 45)),
                    onPressed: () {
                      final destino = MaterialPageRoute(
                          builder: (_) => const ListaMedicamentos());
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
                        backgroundColor: tema.colorScheme.background,
                        elevation: 0,
                        fixedSize: const Size(200, 45)),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("Pastillas de hoy"),
                                content: const Text(
                                    "Tienes que tomarte la pastilla:\n Medicamento A 400mg"),
                                actions: <Widget>[
                                  OutlinedButton(
                                      child: const Text("Ok"),
                                      onPressed: () {
                                        Navigator.of(context).pop("ok");
                                      })
                                ],
                              ));
                    },
                    child: const Text("Pastillas de hoy")),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tema.colorScheme.background,
                        elevation: 0,
                        fixedSize: const Size(200, 45)),
                    onPressed: () {
                      final destino = MaterialPageRoute(
                          builder: (_) => const PantallaPrincipal());
                      Navigator.push(context, destino);
                    },
                    child: const Text("Cerrar sesion")),
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
