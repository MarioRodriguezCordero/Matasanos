import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Database? _database;
  static const String dbName = 'BDResultados.db';

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initDatabase();
    return _database;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), dbName);
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE IF NOT EXISTS visita(
            id INTEGER PRIMARY KEY,
            especialidad TEXT,
            doctor TEXT,
            lugar TEXT,
            fecha TEXT
          )
        ''');
      },
    );
  }

  Future<List<Map<String, dynamic>>> getData(String base) async {
    Database? db = await database;
    return await db!.query(base);
  }

  Future<List<Map<String, dynamic>>> getDataSQL(String sql) async {
    Database? db = await database;
    var resultado = await db!.rawQuery(sql);
    return resultado;
  }

  Future<int> insertData(String tabla, Map<String, dynamic> fila) async {
    Database? db = await database;
    return await db!.insert(tabla, fila);
  }

  Future<int> updateData(String tabla, Map<String, dynamic> fila) async {
    Database? db = await database;
    return await db!.update(
      tabla,
      fila,
      where: 'id = ?',
      whereArgs: [fila['id']],
    );
  }

  Future<int> deleteData(String tabla, int id) async {
    Database? db = await database;
    return await db!.delete(
      tabla,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
