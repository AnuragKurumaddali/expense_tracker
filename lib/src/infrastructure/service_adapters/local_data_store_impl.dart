import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../services/local_data_store/local_data_store_interface.dart';

class LocalDataStoreImpl implements LocalDataStoreInterface {
  static const _databaseName = "expense_tracker.db";
  static const _databaseVersion = 1;

  static const table = 'expenses';
  static const columnId = '_id';
  static const columnAmount = 'amount';
  static const columnCategory = 'category';
  static const columnDescription = 'description';
  static const columnDate = 'date';

  final Database _database;

  LocalDataStoreImpl(this._database);

  // This is called when you need to initialize the database
  static Future<Database> initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _databaseName);

    return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  // Creates the database table
  static Future _onCreate(Database db, int version) async {
    await db.execute(''' 
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnAmount REAL,
        $columnCategory TEXT,
        $columnDescription TEXT,
        $columnDate TEXT
      )
    ''');
  }

}