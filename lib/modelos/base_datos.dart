import 'package:sqflite/sqflite.dart';

//helper para la base de datos
class BDHelper {
  static Database? _baseDatos;
  static const String nombreBD = "BDMatasanos.db";

  //iniciar la base de datos
  Future<Database?> get baseDatos async {
    if (_baseDatos != null) {
      return _baseDatos;
    }
    _baseDatos = await _inicializarBD();
    return _baseDatos;
  }

  //consultar la tabla entera en la base de datos
  Future<List<Map<String, dynamic>>> consultarBD(String tabla) async {
    Database? bd = await baseDatos;
    var resultado = await bd!.query(tabla);
    return resultado;
  }

  //consulta con sql
  Future<List<Map<String, dynamic>>> consultarSQL(String sql) async {
    Database? bd = await baseDatos;
    var resultado = await bd!.rawQuery(sql);
    return resultado;
  }

  //insertar datos en la base de datos
  Future<int> insertarBD(String tabla, Map<String, dynamic> fila) async {
    Database? bd = await baseDatos;
    var resultado = await bd!.insert(tabla, fila);
    return resultado;
  }

  //eliminar datos de la base de datos
  Future<int> eliminarBD(String tabla, int id) async {
    Database? bd = await baseDatos;
    var resultado = await bd!.delete(tabla, where: 'id = ?', whereArgs: [id]);
    return resultado;
  }

  //actualizar datos de la base de datos
  Future<int> actualizarBD(String tabla, Map<String, dynamic> fila) async {
    Database? bd = await baseDatos;
    var resultado = 0;
    if (bd != null) {
      resultado = await bd
          .update(tabla, fila, where: 'id = ?', whereArgs: [fila['id']]);
    }

    return resultado;
  }

  //Iniciar la base de datos
  _inicializarBD() async {
    var directorio = await getDatabasesPath();
    String path = directorio + nombreBD;
    var baseDatos = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE IF NOT EXISTS VisitaMedica(id INTEGER PRIMARY KEY, especialidad TEXT, doctor TEXT, lugar TEXT, fecha TEXT)");
      await db.execute(
          "CREATE TABLE Medicamentos(id INTEGER PRIMARY KEY, nombre TEXT, imagenEnvase TEXT, frecuencia TEXT, cantidadActual TEXT, dosis TEXT)");

      await db.execute(
          "INSERT INTO Medicamentos(nombre, imagenEnvase, frecuencia, cantidadActual, dosis) VALUES('Paracetamol', '', 'Lunes y miercoles', '10', '1')");
    });
    return baseDatos;
  }
}
