import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:matasanos/modelos/medicamento.dart';
import 'package:matasanos/paginas/listaMedicamentos.dart';
import 'package:matasanos/paginas/configuracion.dart';
import 'package:matasanos/tema/temaActual.dart';
import 'package:provider/provider.dart';

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

  final controlNombre = TextEditingController();
  final controlFrecuencia = TextEditingController();
  final controlDosis = TextEditingController();
  final controlCantidad = TextEditingController();

  @override
  void dispose() {
    controlNombre.dispose();
    controlCantidad.dispose();
    controlDosis.dispose();
    controlFrecuencia.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  final tema = Provider.of<ThemeLoader>(context).actualTheme;
  Medicamento medicamento = Medicamento();
  controlNombre.text = medicamento.nombre;
  controlCantidad.text = medicamento.cantidadActual;
  controlDosis.text = medicamento.dosis;
  controlFrecuencia.text = medicamento.frecuencia ;

    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                final destino = MaterialPageRoute(
                  builder: (_) => Configuracion());
                Navigator.push(context, destino);
              }
            )
          ]
        ),
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
                padding: EdgeInsets.all(8),
                child: TextField(
                  controller: controlNombre,
                  style: TextStyle(
                    color: tema.colorScheme.primary
                    )
                
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
                  decoration: BoxDecoration(
                      color: tema.colorScheme.primary,
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
                    activeColor: tema.colorScheme.secondary,
                    checkColor: Colors.black,
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
                    activeColor: tema.colorScheme.secondary,
                    checkColor: Colors.black,
                    tileColor: tema.colorScheme.primary,
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
                    activeColor: tema.colorScheme.secondary,
                    checkColor: Colors.black,
                    tileColor: tema.colorScheme.primary,
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
                    activeColor: tema.colorScheme.secondary,
                    checkColor: Colors.black,
                    tileColor: tema.colorScheme.primary,
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
                    activeColor: tema.colorScheme.secondary,
                    checkColor: Colors.black,
                    tileColor: tema.colorScheme.primary,
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
                    activeColor: tema.colorScheme.secondary,
                    checkColor: Colors.black,
                    tileColor: tema.colorScheme.primary,
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
                  decoration: BoxDecoration(
                      color: tema.colorScheme.primary,
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
                    activeColor: tema.colorScheme.secondary,
                    checkColor: Colors.black,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ),
            ),
            const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("Cantidad de pastillas en la caja"),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8), 
                  child: TextField(
                    controller: controlCantidad,
                    style: TextStyle(
                      color: tema.colorScheme.primary
                  )
                )
              )
            ),
            const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("¿De cuanto es la dosis que se tiene que tomar?"),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8), 
                  child: TextField(
                    controller: controlDosis,
                    style: TextStyle(
                      color: tema.colorScheme.primary
                  )
                )
              )
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                      onPressed: () {
                        medicamento.saveMedicamento(medicamento);
                        final destino = MaterialPageRoute(
                            builder: (_) => ListaMedicamentos());
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
      _selectedImage = File(returnedImage.path);
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
