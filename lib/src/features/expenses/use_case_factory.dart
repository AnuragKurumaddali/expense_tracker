import 'package:injectable/injectable.dart' show injectable;

import 'add_expense_module/add_expense.dart';
import 'command_factory.dart';
import 'get_all_expenses/get_all_expenses.dart';
import 'update_expense_module/update_expense.dart';

@injectable
class AddExpenseModuleUseCaseFactory {
  final AddExpenseModuleCommandFactory commandFactory;

  const AddExpenseModuleUseCaseFactory(this.commandFactory);

  UpdateExpenses updateExpense(UpdateExpenseRequest request) => UpdateExpenses(request);
  AddExpense addExpense(AddExpenseRequest request) => AddExpense(request, commandFactory);
  GetAllExpenses getAllExpenses(GetAllExpensesRequest request) => GetAllExpenses(request, commandFactory);

}
