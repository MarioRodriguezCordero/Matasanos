import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:matasanos/paginas/listaMedicamentos.dart';

class NuevoMedicamento_1 extends StatefulWidget {
  const NuevoMedicamento_1({super.key});

  @override
  State<NuevoMedicamento_1> createState() => _NuevoMedicamento_1State();
}

class _NuevoMedicamento_1State extends State<NuevoMedicamento_1> {
  File? _selectedImage;
  bool? lunes = false;
  bool? martes = false;
  bool? miercoles = false;
  bool? jueves = false;
  bool? viernes = false;
  bool? sabado = false;
  bool? domingo = false;
  String _a = "";

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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  onSubmitted: (value) {
                    _a = value;
                  },
                ),
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
                      onPressed: () {
                        _fotoGaleria();
                      },
                      child: const Text("Importar foto")),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      onPressed: () {
                        _fotoCamara();
                      },
                      child: const Text("Hacer foto")),
                )),
            const SizedBox(height: 20),
            _selectedImage != null
                ? Image.file(_selectedImage!)
                : const Text("No hay foto"),
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
                            builder: (_) => ListaMedicamentos(_a));
                        Navigator.push(context, destino);
                      },
                      child: const Text("Finalizar")),
                )),
          ],
        )));
  }

  Future _fotoGaleria() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  Future _fotoCamara() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}
