import 'package:flutter/material.dart';
import 'package:matasanos/tema/temaActual.dart';
import 'package:provider/provider.dart';

class ContainerMedicamento extends StatelessWidget {
  final String nombre;
  final String frecuencia;
  final String cantidadActual;
  final String dosis;

  const ContainerMedicamento(
    {super.key,
    required this.nombre,
    required this.cantidadActual,
    required this.dosis,
    required this.frecuencia}
  );

  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeLoader>(context).actualTheme;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: tema.colorScheme.primary),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: tema.colorScheme.secondary),
                        borderRadius: BorderRadius.circular(25)),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: tema.colorScheme.background,
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: const Icon(Icons.medication),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nombre,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                      decoration: BoxDecoration(
                          color: tema.colorScheme.secondary,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: tema.colorScheme.background,
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: const Icon(Icons.medical_information),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Text('Dosis diaria'),
                          const SizedBox(width: 5.0),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text('$dosis')
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                      decoration: BoxDecoration(
                          color: tema.colorScheme.secondary,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: tema.colorScheme.background,
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: const Icon(Icons.discount),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Text('Cantidad Actual'),
                          const SizedBox(width: 5.0),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text('$cantidadActual')
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                      decoration: BoxDecoration(
                          color: tema.colorScheme.secondary,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: tema.colorScheme.background,
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: const Icon(Icons.medical_information),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Text('Dosis diaria'),
                          const SizedBox(width: 5.0),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text('$dosis')
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                      decoration: BoxDecoration(
                          color: tema.colorScheme.secondary,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: tema.colorScheme.background,
                              ),
                              padding: const EdgeInsets.all(10.0),
                              child: const Icon(Icons.discount),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Text('Frecuencia'),
                          const SizedBox(width: 5.0),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text('$frecuencia a la semana')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(),
              Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: tema.colorScheme.secondary),
                    borderRadius: BorderRadius.circular(25)),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: tema.colorScheme.background,
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(Icons.camera),
                  ),
                ),
              ),
            ],
          )
      );
  }
}