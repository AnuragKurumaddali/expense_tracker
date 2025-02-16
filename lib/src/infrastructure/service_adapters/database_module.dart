import 'local_data_store.dart';
import 'package:sqflite/sqflite.dart';
import '../../user_interface/_bloc_imports.dart';

@module
abstract class DatabaseModule {
  @preResolve
  @singleton
  Future<Database> get database async => await LocalDataStore.initDatabase();

}