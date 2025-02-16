import '../../features/expenses/add_expense_module/add_expense_command.dart';
import '../../features/expenses/command_factory.dart';
import '../../features/expenses/entities/expense.dart';
import '../../features/expenses/get_all_expenses/get_all_expenses_command.dart';
import '../../user_interface/_bloc_imports.dart';
import '../service_adapters/local_data_store.dart';
import 'add_to_expense.dart';
import 'get_my_expenses.dart';

@Injectable(as: AddExpenseModuleCommandFactory)
class DefaultAddExpenseCommandFactory extends AddExpenseModuleCommandFactory {
  final LocalDataStore _localDataStore;

  DefaultAddExpenseCommandFactory(this._localDataStore);

  @override
  AddExpenseCommand addExpense(Expense expense) => DefaultAddToExpenseCommand(expense, _localDataStore);

  @override
  GetAllExpensesCommand getAllExpenses() => DefaultGetAllMyExpensesCommand(_localDataStore);
}
