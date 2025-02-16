import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../../features/expenses/entities/expense.dart';
import '../../user_interface/_bloc_imports.dart';
import '../services/local_data_store/local_data_store_service.dart';

@injectable
class LocalDataStore implements LocalDataStoreService {
  static const _databaseName = "expense_tracker.db";
  static const _databaseVersion = 1;

  static const table = 'expenses';
  static const columnId = '_id';
  static const columnAmount = 'amount';
  static const columnCategory = 'category';
  static const columnDescription = 'description';
  static const columnDate = 'date';

  final Database _localDataSource;

  LocalDataStore(this._localDataSource);

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

  @override
  Future<void> saveExpense(Expense expense) async {
    // final db = await database;
    await _localDataSource.insert(table, expense.toMap());
  }

  @override
  Future<List<Expense>> getAllExpenses() async {
    // final db = await database;
    final result = await _localDataSource.query(table);
    return result.map((json) => Expense.fromMap(json)).toList();
  }

}