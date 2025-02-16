import 'add_expense_module/add_expense_command.dart';
import 'get_all_expenses/get_all_expenses_command.dart';

abstract class AddExpenseModuleCommandFactory
    implements AddExpenseCommandFactory,
        GetAllExpensesCommandFactory{}
