import 'package:note_task_v1/model/nota.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class NotaHelper {
  // Variaveis colunas DB
  String tabelaNota = 'nota';
  String colId = 'id';
  String colTitulo = 'titulo';
  String colDescricao = 'descricao';
  String colDataCriacao = 'dataCriacao';

  // Construtor com acesso privado
  NotaHelper._();

  // Instancia de DB
  static final NotaHelper instance = NotaHelper._();

  // Instancia do SQLite
  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'note.db';

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  void _createDB(Database db, int newVersion) async {
    await db.execute(
        'CREATE  TABLE $tabelaNota ($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitulo TEXT, $colDescricao TEXT, $colDataCriacao TEXT)');
  }

  /// Operações CRUD
  //
  // Inserir nova nota
  Future<int> insertNote(Nota nota) async {
    Database db = await database;

    var resultado = await db.insert(tabelaNota, nota.toMap());

    return resultado;
  }

  // retornar Nota pelo ID
  // Future<Nota?> getNote(int id) async {
  //   Database db = await database;

  //   List<Map> maps = await db.query(
  //     tabelaNota,
  //     columns: [colId, colTitulo, colDescricao],
  //     where: '$colId = ?',
  //     whereArgs: [id],
  //   );

  //   if (maps.isNotEmpty) {
  //     return null;
  //   } else {
  //     return Nota.fromMap(maps.first[colId]);
  //   }
  // }

  // Retornar todas as notas
  Future<List<Nota>> getNotes() async {
    Database db = await database;
    var resultado = await db.query(tabelaNota);

    List<Nota> lista =
        resultado.isEmpty ? resultado.map((n) => Nota.fromMap(n)).toList() : [];

    return lista;
  }

  // Actualizar objecto
  Future<int> updateNote(Nota nota) async {
    var db = await database;

    var resultado = await db.update(
      tabelaNota,
      nota.toMap(),
      where: '$colId = ?',
      whereArgs: [nota.id],
    );

    return resultado;
  }

  // Deletar
  Future<int> deleteNote(int id) async {
    var db = await database;

    int resultado = await db.delete(
      tabelaNota,
      where: '$colId = ?',
      whereArgs: [id],
    );
    return resultado;
  }

  ///
  ///
  //Numero de registro cadastrado
  Future<int?> getCount() async {
    Database db = await database;

    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) FROM $tabelaNota)');

    int? resultado = Sqflite.firstIntValue(x);
    return resultado;
  }

  // Fechar DB
  Future close() async {
    Database db = await database;
    db.close();
  }
}
