import 'package:flutter/material.dart';
import 'package:matasanos/paginas/nuevoMedicamento_1.dart';

class ListaMedicamentos extends StatefulWidget {
  const ListaMedicamentos({super.key});

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
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _data[index].isExpanded = !isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
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
                  },
                ),
                isExpanded: item.isExpanded);
          }).toList(),
        ),
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
