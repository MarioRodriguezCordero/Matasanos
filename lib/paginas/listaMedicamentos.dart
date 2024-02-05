import 'package:flutter/material.dart';
import 'package:matasanos/paginas/home.dart';
import 'package:matasanos/paginas/nuevoMedicamento_1.dart';

class ListaMedicamentos extends StatefulWidget {
  String _a;

  ListaMedicamentos(this._a);

  @override
  State<ListaMedicamentos> createState() => _ListaMedicamentosState();
}

class Item {
  bool isExpanded;
  String expandedText;
  String headerText;

  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
}

class _ListaMedicamentosState extends State<ListaMedicamentos> {
  final List<Item> _data = List<Item>.generate(
    5,
    (int index) {
      return Item(
          headerText: "Item $index",
          expandedText: "This is item number $index");
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(
          title: const Text(
            "Lista de Medicamentos",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ),
        //##################### Body #####################
        body: SingleChildScrollView(
          child: Column(children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _data[index].isExpanded = isExpanded;
                });
              },
              children: _data.map<ExpansionPanel>((Item item) {
                return ExpansionPanel(
                    isExpanded: item.isExpanded,
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(item.headerText),
                      );
                    },
                    body: ListTile(
                        title: Text(item.expandedText),
                        subtitle: const Text("Asdadad"),
                        trailing: const Icon(
                          Icons.delete,
                          color: Colors.orange,
                        ),
                        onTap: () {
                          setState(() {
                            _data.removeWhere(
                                (Item currentItem) => item == currentItem);
                          });
                        }));
              }).toList(),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      final destino = MaterialPageRoute(
                          builder: (_) => const NuevoMedicamento_1());
                      Navigator.push(context, destino);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      elevation: 0,
                      fixedSize: const Size(200, 80),
                    ),
                    child: const Text("Añadir nuevo\n medicamento",
                        style: TextStyle(fontSize: 20)))),
            Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      final destino =
                          MaterialPageRoute(builder: (_) => const Home());
                      Navigator.push(context, destino);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      elevation: 0,
                      fixedSize: const Size(150, 50),
                    ),
                    child:
                        const Text("Volver", style: TextStyle(fontSize: 20)))),
          ]),
        ));
  }
}
