import 'package:flutter/material.dart';
import 'package:matasanos/paginas/crearCuenta_3.dart';
import 'package:matasanos/paginas/home.dart';

class CrearCuenta_4 extends StatefulWidget {
  const CrearCuenta_4({super.key});

  @override
  State<CrearCuenta_4> createState() => _CrearCuenta_4State();
}

class _CrearCuenta_4State extends State<CrearCuenta_4> {
  bool isRecordChecked = false;
  bool isListChecked = false;
  bool isReposChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(),
        //##################### Body #####################
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  "¿Para que quieres utilizar esta aplicacion?",
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Row(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        child: Checkbox(
                            checkColor: Colors.black,
                            value: isRecordChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isRecordChecked = value!;
                              });
                            }))),
                const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Text(
                        "Recordatorios",
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        child: Checkbox(
                            checkColor: Colors.black,
                            value: isListChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isListChecked = value!;
                              });
                            }))),
                const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Text(
                        "Lista de medicamentos",
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        child: Checkbox(
                            checkColor: Colors.black,
                            value: isReposChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isReposChecked = value!;
                              });
                            }))),
                const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Text(
                        "Reposicion de medicamentos",
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
              ],
            ),
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
                                backgroundColor: Colors.orange,
                                elevation: 0,
                                fixedSize: const Size(150, 40)),
                            onPressed: () {
                              final destino = MaterialPageRoute(
                                  builder: (_) => const CrearCuenta_3());
                              Navigator.push(context, destino);
                            },
                            child: const Text("Volver"),
                          ),
                        )),
                    Align(
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
                            child: const Text("Finalizar"),
                          ),
                        ))
                  ],
                ))
          ],
        )));
  }
}
