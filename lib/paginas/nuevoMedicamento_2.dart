import 'package:flutter/material.dart';
import 'package:matasanos/paginas/listaMedicamentos.dart';

class NuevoMedicamento_2 extends StatefulWidget {
  const NuevoMedicamento_2({super.key});

  @override
  State<NuevoMedicamento_2> createState() => _NuevoMedicamento_2State();
}

class _NuevoMedicamento_2State extends State<NuevoMedicamento_2> {
  @override
  Widget build(BuildContext context) {
    bool lunes = false;
    bool martes = false;
    bool miercoles = false;
    bool jueves = false;
    bool viernes = false;
    bool sabado = false;
    bool domingo = false;

    return Scaffold(
      //##################### AppBar #####################
      appBar: AppBar(),
      //##################### Body #####################
      body: Scrollbar(
        child: Column(
        children: [
          const Expanded(child: Text("")),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text("¿Que dias te tomas las pastillas?"),
            ),
          ),
          Row(
            children: [
              const Text("Lunes"),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Checkbox(
                    value: lunes, 
                    onChanged: (bool? value) {
                      setState(() {
                        lunes = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text("Martes"),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Checkbox(
                    value: martes, 
                    onChanged: (bool? value) {
                      setState(() {
                        martes = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text("Miercoles"),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Checkbox(
                    value: miercoles, 
                    onChanged: (bool? value) {
                      setState(() {
                        miercoles = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text("Jueves"),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Checkbox(
                    value: jueves, 
                    onChanged: (bool? value) {
                      setState(() {
                        jueves = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text("Viernes"),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Checkbox(
                    value: viernes, 
                    onChanged: (bool? value) {
                      setState(() {
                        viernes = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text("Sabado"),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Checkbox(
                    value: sabado, 
                    onChanged: (bool? value) {
                      setState(() {
                        sabado = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Text("Domingo"),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Checkbox(
                    value: domingo, 
                    onChanged: (bool? value) {
                      setState(() {
                        domingo = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text("Hora a la que se\n toma el medicamento"),
            )
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: TextField()
            )
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    final destino = MaterialPageRoute(
                                builder: (_) => const ListaMedicamentos());
                            Navigator.push(context, destino);
                  },
                  child: const Text("Finalizar") 
                ),
              )
            ),
          )
        ],
      ))
    );
  }
}