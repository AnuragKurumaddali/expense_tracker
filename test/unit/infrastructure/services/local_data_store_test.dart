import 'package:expense_tracker/src/features/expenses/entities/expense.dart';
import 'package:expense_tracker/src/infrastructure/service_adapters/local_data_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  late LocalDataStore localDataStore;

  setUp(() async {
    sqfliteFfiInit();

    // Get a database factory instance
    var databaseFactory = databaseFactoryFfi;

    // Open or create the database
    var db = await databaseFactory.openDatabase('expense_tracker.db');

    localDataStore = LocalDataStore(db);
  });

  test('should save and retrieve expense', () async {
    final expense = Expense(amount: 200, category: 'Entertainment', date: DateTime.now(), description: 'Movie');

    await localDataStore.saveExpense(expense);
    final result = await localDataStore.getAllExpenses();

    expect(result, contains(expense));
  });
}
