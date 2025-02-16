import '../../features/expenses/add_expense_module/add_expense_command.dart';
import '../../features/expenses/add_expense_module/add_expense_exception.dart';
import '../../features/expenses/entities/expense.dart';
import '../service_adapters/local_data_store.dart';

class DefaultAddToExpenseCommand implements AddExpenseCommand {
  final Expense expense;
  final LocalDataStore _localDataStore;
  DefaultAddToExpenseCommand(this.expense, this._localDataStore);

  @override
  Future<void> execute() async {
    try {
      await _localDataStore.saveExpense(expense);
    } catch (exception) {
      throw const DefaultAddExpenseException();
    }
  }
}
