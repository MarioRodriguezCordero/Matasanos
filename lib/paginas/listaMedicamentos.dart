import 'package:flutter/material.dart';
import 'package:matasanos/container/container_medicamento.dart';
import 'package:matasanos/modelos/medicamento.dart';
import 'package:matasanos/paginas/configuracion.dart';
import 'package:matasanos/paginas/home.dart';
import 'package:matasanos/paginas/nuevoMedicamento_1.dart';
import 'package:matasanos/services/detector_caidas.dart';
import 'package:matasanos/tema/temaActual.dart';
import 'package:provider/provider.dart';

class ListaMedicamentos extends StatelessWidget{
  const ListaMedicamentos({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Medicamento medicamento = Medicamento();
    final tema = Provider.of<ThemeLoader>(context).actualTheme;
    final detector_caidas = Provider.of<Detector>(context);

    return Scaffold(
        //##################### AppBar #####################
        appBar: AppBar(
          title: const Text(
            "Lista de Medicamentos",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () {
                final destino = MaterialPageRoute(
                  builder: (_) => const Configuracion());
                Navigator.push(context, destino);
              }
            )
          ]
        ),
        //##################### Body #####################
        backgroundColor: tema.colorScheme.surface,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  //See /widgets/container/custom_medicine_container.dart to know more
                  FutureBuilder(
                      future: medicamento.getMedicamento(),
                      builder: (context, AsyncSnapshot<List<Medicamento>> snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              return ContainerMedicamento(
                                  nombre: snapshot.data![index].nombre,
                                  cantidadActual: snapshot.data![index].cantidadActual,
                                  dosis: snapshot.data![index].dosis,
                                  frecuencia:
                                      snapshot.data![index].frecuencia);
                            },
                          );
                        } else {
                          return const Center(
                            //While the DB loads, display a progress indicator
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      final destino =
                          MaterialPageRoute(builder: (_) => const Home());
                      Navigator.push(context, destino);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tema.colorScheme.background,
                      elevation: 0,
                      fixedSize: const Size(150, 50),
                    ),
                    child:
                        const Text("Volver", style: TextStyle(fontSize: 20)))),
          ],
        ),
        
      ),
      //When you touch the button, display the creation med page
      floatingActionButton: !detector_caidas.detectorEnabled
          ? FloatingActionButton(
              onPressed: () {
                final destino = MaterialPageRoute(
                            builder: (_) => const NuevoMedicamento_1());
                        Navigator.push(context, destino);
              },
              backgroundColor: tema.colorScheme.onSurface,
              elevation: 10,
              shape: const CircleBorder(),
              child: const Icon(Icons.add, color: Colors.white),
            )
          : null,
            );
  }
}
