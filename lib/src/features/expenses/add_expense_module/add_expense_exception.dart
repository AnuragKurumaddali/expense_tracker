import '../../../user_interface/_event_imports.dart';

sealed class AddExpenseException extends BasicException{
  const AddExpenseException();
}

class DefaultAddExpenseException extends AddExpenseException{
  const DefaultAddExpenseException();
}