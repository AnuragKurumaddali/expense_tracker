import '../service_adapters/local_data_store.dart';
import '../../features/expenses/entities/expense.dart';
import '../../features/expenses/get_all_expenses/get_all_expenses_command.dart';
import '../../features/expenses/get_all_expenses/get_all_expenses_exceptions.dart';

class DefaultGetAllMyExpensesCommand implements GetAllExpensesCommand {
  final LocalDataStore _localDataStore;
  DefaultGetAllMyExpensesCommand(this._localDataStore);

  @override
  Future<List<Expense>> execute() async {
    try {
      return await _localDataStore.getAllExpenses();
    } catch (exception) {
      throw const DefaultGetAllExpensesException();
    }
  }
}
