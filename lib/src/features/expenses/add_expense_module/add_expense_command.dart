import 'package:framework/use_case.dart';
import '../entities/expense.dart';

abstract class AddExpenseCommandFactory {
  AddExpenseCommand addExpense(Expense expense);
}

abstract class AddExpenseCommand extends FutureCommand<void> {
  const AddExpenseCommand();
}
