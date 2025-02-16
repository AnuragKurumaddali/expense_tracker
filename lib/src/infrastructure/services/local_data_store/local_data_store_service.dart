import '../../../features/expenses/entities/expense.dart';

abstract class LocalDataStoreService {
  Future<List<Expense>> getAllExpenses();
  Future<void> saveExpense(Expense expense);
}