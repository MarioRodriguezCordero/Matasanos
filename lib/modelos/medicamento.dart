class Medicamento {
  int? _id;
  late String _nombre;
  late String _imagenEnvase;
  late int _frecuencia;
  late int _cantidadActual;
  late int _dosis;
  //constructor
  Medicamento() {
    this._nombre = '';
    this._imagenEnvase = '';
    this._frecuencia = 0;
    this._cantidadActual = 0;
    this._dosis = 0;
  }
  //constructor sin id
  Medicamento.withoutId(this._nombre, this._imagenEnvase, this._frecuencia,
      this._cantidadActual, this._dosis);
  //constructor con id
  Medicamento.withId(this._id, this._nombre, this._imagenEnvase,
      this._frecuencia, this._cantidadActual, this._dosis);
  //constructor con map
  Medicamento.fromMap(Map<String, dynamic> map) {
    this._id = (map['id'] != null) ? map['id'] : null;
    this._nombre = (map['nombre'] != null) ? map['nombre'] : '';
    this._imagenEnvase =
        (map['imagenEnvase'] != null) ? map['imagenEnvase'] : '';
    this._frecuencia = (map['frecuencia'] != null) ? map['frecuencia'] : 0;
    this._cantidadActual =
        (map['cantidadActual'] != null) ? map['cantidadActual'] : 0;
    this._dosis = (map['dosis'] != null) ? map['dosis'] : 0;
  }

  //Getters y setters
  int? get id => _id;
  String get nombre => _nombre;
  String get imagenEnvase => _imagenEnvase;
  int get cantidadInicial => _frecuencia;
  int get cantidadActual => _cantidadActual;
  int get dosis => _dosis;

  set nombre(String nombre) {
    this._nombre = nombre;
  }

  set imagenEnvase(String imagenEnvase) {
    this._imagenEnvase = imagenEnvase;
  }

  set frecuencia(int frecuencia) {
    this._frecuencia = cantidadInicial;
  }

  set cantidadActual(int cantidadActual) {
    this._cantidadActual = cantidadActual;
  }

  set dosis(int dosis) {
    this._dosis = dosis;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) map['id'] = _id;
    map['nombre'] = _nombre;
    map['imagenEnvase'] = _imagenEnvase;
    map['frecuencia'] = _frecuencia;
    map['cantidadActual'] = _cantidadActual;
    map['dosis'] = _dosis;
    return map;
  }
}
