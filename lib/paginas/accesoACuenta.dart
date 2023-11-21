import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccesoACuenta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
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
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          child: Text(
            "Nombre",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      Align(
          alignment: Alignment.center,
          child: Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: TextField())),
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "1º Apellido",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      Align(
          alignment: Alignment.center,
          child: Padding(padding: EdgeInsets.all(20), child: TextField())),
      Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Contraseña",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      Align(
          alignment: Alignment.center,
          child: Padding(padding: EdgeInsets.all(20), child: TextField())),
      Expanded(
        flex: 1,
        child: Text(""),
      )
    ])));
  }
}
