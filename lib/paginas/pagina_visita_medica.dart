import 'package:flutter/material.dart';

class PaginaVisitaMedica extends StatefulWidget {
  const PaginaVisitaMedica({super.key});

  @override
  State<PaginaVisitaMedica> createState() => _PaginaVisitaMedicaState();
}

class _PaginaVisitaMedicaState extends State<PaginaVisitaMedica> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
            child: Form(
                key: _formKey,
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  children: [
                    // Especialidad
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        label: Text("Especialidad"),
                      ),
                      validator: (valor) {
                        if (valor == null || valor.isEmpty) {
                          return ("El campo no puede estar vacio");
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Nombre del doctor
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        label: Text("Nombre del doctor"),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Lugar de la visita
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        label: Text("Lugar de la visita"),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Dia
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        label: Text("Dia"),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Hora
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        label: Text("Hora"),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: const Text("Guardar"))
                  ],
                ))),
      ),
    );
  }
}
