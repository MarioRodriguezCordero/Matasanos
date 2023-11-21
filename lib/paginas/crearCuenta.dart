import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CrearCuenta extends StatelessWidget {
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
                  backgroundColor: Colors.greenAccent,
                  elevation: 0,
                  fixedSize: const Size(150, 40)),
              onPressed: () {},
              child: const Text("Para Mi"),
            ),
          )),
      Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  elevation: 0,
                  fixedSize: const Size(150, 40)),
              onPressed: () {},
              child: const Text("Para Otro"),
            ),
          )),
      const Expanded(
        flex: 1,
        child: Text(""),
      )
    ])));
  }
}
