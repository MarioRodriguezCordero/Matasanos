import 'package:flutter/material.dart';
import 'package:matasanos/paginas/accesoACuenta.dart';
import 'package:matasanos/paginas/crearCuenta_2.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Expanded(
        flex: 1,
        child: Padding(
          padding: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
          child: Text(
            "MATASANOS",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50),
          ),
        ),
      ),
      const Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(top: 80, right: 20, left: 20, bottom: 40),
          child: Text(
            "¡Bienvenido!\n Para empezar a usar la aplicación\n cree o acceda a su cuenta",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      Align(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                elevation: 0,
                fixedSize: const Size(150, 40)),
            onPressed: () {
              final destino =
                  MaterialPageRoute(builder: (_) => const CrearCuenta_2());
              Navigator.push(context, destino);
            },
            child: const Text("Crear cuenta"),
          ),
        ),
      ),
      Align(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                elevation: 0,
                fixedSize: const Size(170, 40)),
            onPressed: () {
              final destino =
                  MaterialPageRoute(builder: (_) => const AccesoACuenta());
              Navigator.push(context, destino);
            },
            child: const Text("Acceder a cuenta"),
          ),
        ),
      ),
      const Expanded(
        flex: 1,
        child: Text(""),
      )
    ])));
  }
}
