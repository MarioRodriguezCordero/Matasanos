import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:matasanos/paginas/nuevoMedicamento_2.dart';

class NuevoMedicamento_1 extends StatefulWidget {
  const NuevoMedicamento_1({super.key});

  @override
  State<NuevoMedicamento_1> createState() => _NuevoMedicamento_1State();
}

class _NuevoMedicamento_1State extends State<NuevoMedicamento_1> {
  File? _selectedImage;

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
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      onPressed: () {
                        final destino = MaterialPageRoute(
                            builder: (_) => const NuevoMedicamento_2());
                        Navigator.pushNamed(context, '/', 
                        arguments: );
                      },
                      child: const Text("Siguiente")),
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
