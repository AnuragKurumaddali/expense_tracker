import 'package:framework/use_case.dart';
import '../entities/expense.dart';

abstract class GetAllExpensesCommandFactory {
  GetAllExpensesCommand getAllExpenses();
}

abstract class GetAllExpensesCommand extends FutureCommand<List<Expense>> {
  const GetAllExpensesCommand();
}
