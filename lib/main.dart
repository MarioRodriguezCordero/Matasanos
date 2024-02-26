import 'package:flutter/material.dart';
import 'package:matasanos/paginas/pantallaPrincipal.dart';
import 'package:matasanos/services/caida_services.dart';
import 'package:matasanos/services/detector_caidas.dart';
import 'package:matasanos/tema/temaActual.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeLoader(0)),
        ChangeNotifierProvider(create: (_) => Detector()),
        ChangeNotifierProvider(create: (_) => AccelerometerProvider())
        ],
      child: const MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeLoader>(context).actualTheme;
    return MaterialApp(
      theme: tema,
      home: const PantallaPrincipal(),
    );
  }
}
