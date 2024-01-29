import 'package:flutter/material.dart';
import 'package:matasanos/paginas/nuevoMedicamento_2.dart';

class NuevoMedicamento_1 extends StatelessWidget {
  const NuevoMedicamento_1({super.key});

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
                child: Text("Nombre del medicamento"),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: TextField(),
              ),
            ),
            const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Foto del medicamento"),
                )),
            const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                  ),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Importar foto")),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Hacer foto")),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      onPressed: () {
                        final destino = MaterialPageRoute(
                            builder: (_) => const NuevoMedicamento_2());
                        Navigator.push(context, destino);
                      },
                      child: const Text("Siguiente")),
                )),
          ],
        )));
  }
}
