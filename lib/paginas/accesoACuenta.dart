import 'package:flutter/material.dart';
import 'package:matasanos/paginas/home.dart';
import 'package:matasanos/tema/temaActual.dart';
import 'package:provider/provider.dart';

class AccesoACuenta extends StatelessWidget {
  const AccesoACuenta({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeLoader>(context).actualTheme;

    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(),
        //##################### Body #####################
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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

          // Este Textfield sirve para introducir el nombre del dueño de la cuenta
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
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: TextField(
                    style: TextStyle(color: tema.colorScheme.secondary),
                  ))),

          // Texfield para introducir el primer apellido
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

          // Introduces la contraseña en este textfield
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
                "Contraseña",
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

          // Boton para entrar a la pagina home
          Expanded(
              flex: 1,
              child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: tema.colorScheme.background,
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
