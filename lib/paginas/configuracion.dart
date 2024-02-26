import 'package:flutter/material.dart';
import 'package:matasanos/tema/temaActual.dart';
import 'package:provider/provider.dart';
import 'package:matasanos/services/detector_caidas.dart';

class Configuracion extends StatefulWidget {
  const Configuracion({super.key});

  @override
  State<Configuracion> createState() => _ConfiguracionState();
}

class _ConfiguracionState extends State<Configuracion> {
  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeLoader>(context).actualTheme;
    final detector = Provider.of<Detector>(context);

    return Scaffold(
        appBar: AppBar(),
        backgroundColor: tema.colorScheme.surface,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Global",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: tema.colorScheme.secondary,
                        border: Border.all(color: tema.colorScheme.primary),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Dark mode",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Switch(
                            value: Provider.of<ThemeLoader>(context).darkTheme,
                            onChanged: (bool value) {
                              if (value) {
                                Provider.of<ThemeLoader>(context, listen: false)
                                    .darkTheme = true;
                              } else {
                                Provider.of<ThemeLoader>(context, listen: false)
                                    .lightTheme = true;
                              }
                            },
                            activeColor: tema.colorScheme.onBackground,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: tema.colorScheme.secondary,
                        border: Border.all(color: tema.colorScheme.primary),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: SwitchListTile(
                        title: Text(
                          "Detector de caidas",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: tema.colorScheme.onBackground,
                          ),
                        ),
                        value: detector.detectorEnabled,
                        onChanged: (bool value) {
                          setState(() {
                            detector.cambiarModoDetector();
                          });
                        },
                        activeColor: tema.colorScheme.primary,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
