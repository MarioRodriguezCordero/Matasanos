import 'package:matasanos/modelos/base_datos.dart';

class Medicamento {
  int? id;
  late String nombre;
  late String imagenEnvase;
  late String frecuencia;
  late String cantidadActual;
  late String dosis;
  //constructor
  Medicamento() {
    nombre = '';
    imagenEnvase = '';
    frecuencia = 'Lunes y Martes';
    cantidadActual = '0';
    dosis = '0';
  }
  //constructor sin id
  Medicamento.withoutId(
    this.nombre, 
    this.imagenEnvase, 
    this.frecuencia,
    this.cantidadActual, 
    this.dosis);
  //constructor con id
  Medicamento.withId(
    this.id, 
    this.nombre, 
    this.imagenEnvase,
    this.frecuencia, 
    this.cantidadActual, 
    this.dosis);
  //constructor con map
  Medicamento.fromMap(Map<String, dynamic> map) {
    id = (map['id'] != null) ? map['id'] : null;
    nombre = (map['nombre'] != null) ? map['nombre'] : '';
    imagenEnvase =
        (map['imagenEnvase'] != null) ? map['imagenEnvase'] : '';
    frecuencia = (map['frecuencia'] != null) ? map['frecuencia'] : 0;
    cantidadActual =
        (map['cantidadActual'] != null) ? map['cantidadActual'] : 0;
    dosis = (map['dosis'] != null) ? map['dosis'] : 0;
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    if (id != null) map['id'] = id;
    map['nombre'] = nombre;
    map['imagenEnvase'] = imagenEnvase;
    map['frecuencia'] = frecuencia;
    map['cantidadActual'] = cantidadActual;
    map['dosis'] = dosis;
    return map;
  }

  Future<List<Medicamento>> getMedicamento() async {
    List<Medicamento> Medicamentos = [];
    BDHelper bdHelper = BDHelper();
    List <Map<String, dynamic>> medicamentoBD = await bdHelper.consultarBD('Medicamentos');
    for (int i = 0; i < medicamentoBD.length; i++) {
      Medicamentos.add(Medicamento.fromMap(medicamentoBD[i]));
    }
    return Medicamentos;
  }

  saveMedicamento(Medicamento medicamento) async {
    BDHelper bdHelper = BDHelper();
    bdHelper.insertarBD('Medicamentos', medicamento.toMap());
  }
}
