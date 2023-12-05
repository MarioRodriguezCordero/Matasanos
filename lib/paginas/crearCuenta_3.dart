import 'package:flutter/material.dart';
import 'package:matasanos/paginas/crearCuenta_2.dart';
import 'package:matasanos/paginas/crearCuenta_4.dart';

class CrearCuenta_3 extends StatefulWidget {
  @override
  State<CrearCuenta_3> createState() => _CrearCuenta_3State();
}

class _CrearCuenta_3State extends State<CrearCuenta_3> {
  final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(),
        //##################### Body #####################
        body: Scrollbar(
          thumbVisibility: true,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                "Contraseña",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.center,
              child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: TextField())),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              child: Text(
                "Repetir Contraseña",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.center,
              child: Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: TextField())),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  child: Row(
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Fecha de nacimientos"
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: TextField(
                            controller: _date,
                            decoration: const InputDecoration(
                                icon: Icon(Icons.calendar_today_rounded),
                                labelText: "Seleccione la fecha"),
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1800),
                                  lastDate: DateTime(2100));

                              if (pickedDate != null) {
                                setState(() {
                                  _date.text =
                                      "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ))),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Dirección",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.center,
              child: Padding(padding: EdgeInsets.all(20), child: TextField())),
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
                                builder: (_) => CrearCuenta_2());
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
                              backgroundColor: Colors.orange,
                              elevation: 0,
                              fixedSize: const Size(150, 40)),
                          onPressed: () {
                            final destino = MaterialPageRoute(
                                builder: (_) => CrearCuenta_4());
                            Navigator.push(context, destino);
                          },
                          child: const Text("Siguiente"),
                        ),
                      )
                      )
                ],
              )
            )
          ]
        )
      ),
    )
        
        
    );
  }
}
