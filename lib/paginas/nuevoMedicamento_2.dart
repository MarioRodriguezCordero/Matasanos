import 'package:flutter/material.dart';
import 'package:matasanos/paginas/listaMedicamentos.dart';

class NuevoMedicamento_2 extends StatefulWidget {
  const NuevoMedicamento_2({super.key});

  @override
  State<NuevoMedicamento_2> createState() => _NuevoMedicamento_2State();
}

class _NuevoMedicamento_2State extends State<NuevoMedicamento_2> {
  bool? lunes = false;
  bool? martes = false;
  bool? miercoles = false;
  bool? jueves = false;
  bool? viernes = false;
  bool? sabado = false;
  bool? domingo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(),
        //##################### Body #####################
        body: SingleChildScrollView(
            child: Column(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text("¿Que dias te tomas las pastillas?"),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.black))),
                  child: CheckboxListTile(
                    title: const Text("Lunes"),
                    value: lunes,
                    onChanged: (value) {
                      setState(() {
                        lunes = value;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.black))),
                  child: CheckboxListTile(
                    title: const Text("Martes"),
                    value: martes,
                    onChanged: (value) {
                      setState(() {
                        martes = value;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    tileColor: Colors.blue,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.black))),
                  child: CheckboxListTile(
                    title: const Text("Miercoles"),
                    value: miercoles,
                    onChanged: (value) {
                      setState(() {
                        miercoles = value;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    tileColor: Colors.blue,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.black))),
                  child: CheckboxListTile(
                    title: const Text("Jueves"),
                    value: jueves,
                    onChanged: (value) {
                      setState(() {
                        jueves = value;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    tileColor: Colors.blue,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.black))),
                  child: CheckboxListTile(
                    title: const Text("Viernes"),
                    value: viernes,
                    onChanged: (value) {
                      setState(() {
                        viernes = value;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    tileColor: Colors.blue,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.black))),
                  child: CheckboxListTile(
                    title: const Text("Sabado"),
                    value: sabado,
                    onChanged: (value) {
                      setState(() {
                        sabado = value;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    tileColor: Colors.blue,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: CheckboxListTile(
                    title: const Text("Domingo"),
                    value: domingo,
                    onChanged: (value) {
                      setState(() {
                        domingo = value;
                      });
                    },
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            ),
            const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Hora a la que se\n toma el medicamento"),
                )),
            const Align(
                alignment: Alignment.center,
                child: Padding(padding: EdgeInsets.all(8), child: TextField())),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      onPressed: () {
                        final destino = MaterialPageRoute(
                            builder: (_) => const ListaMedicamentos());
                        Navigator.push(context, destino);
                      },
                      child: const Text("Finalizar")),
                )),
          ],
        )));
  }
}
