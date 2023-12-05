import 'package:flutter/material.dart';
import 'package:matasanos/paginas/nuevoMedicamento_1.dart';

class ListaMedicamentos extends StatelessWidget {
  const ListaMedicamentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //##################### AppBar #####################
      appBar: AppBar(),
      //##################### Body #####################
      body: Column(children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Lista de medicamentos",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
        ),
        Scrollbar(
            thumbVisibility: true,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return ListTile(
                    title: const Text("Medicamento"),
                    tileColor: Colors.orange,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: const Text("Medicamento 400g"),
                                content:
                                    const Text("FOTO\nTomar 2 veces, al día"),
                                actions: <Widget>[
                                  OutlinedButton(
                                      child: const Text("Ok"),
                                      onPressed: () {
                                        Navigator.of(context).pop("ok");
                                      })
                                ],
                              ));
                    },
                    trailing: const Icon(Icons.menu));
              },
            )),
        ElevatedButton(
            onPressed: () {
              final destino =
                  MaterialPageRoute(builder: (_) => const NuevoMedicamento_1());
              Navigator.push(context, destino);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              elevation: 0,
              fixedSize: const Size(150, 100),
            ),
            child: const Text("Añadir nuevo\n medicamento",
                style: TextStyle(fontSize: 20))),
        const Expanded(flex: 1, child: Text(""))
      ]),
    );
  }
}
