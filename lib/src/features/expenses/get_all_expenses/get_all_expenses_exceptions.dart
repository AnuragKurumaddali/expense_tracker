import '../../../user_interface/_event_imports.dart';

sealed class GetAllExpensesException extends BasicException {
  const GetAllExpensesException();
}

class DefaultGetAllExpensesException extends GetAllExpensesException {
  const DefaultGetAllExpensesException();
}
