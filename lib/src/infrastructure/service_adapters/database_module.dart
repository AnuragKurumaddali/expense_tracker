import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'local_data_store_impl.dart';

@module
abstract class DatabaseModule {
  @preResolve
  @singleton
  Future<Database> get database async => await LocalDataStoreImpl.initDatabase();

  @preResolve
  @singleton
  Future<LocalDataStoreImpl> get expenseLocalDataSource async {
    final db = await database;
    return LocalDataStoreImpl(db);
  }
}