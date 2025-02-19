import '../../../features/expenses/entities/expense.dart';

abstract class LocalDataStoreService {
  Future<List<Expense>> getAllExpenses();
  Future<void> saveExpense(Expense expense);
  Future<double> getYearlyTotal(int year);
  Future<double> getMonthlyTotal(int year, int month);
}