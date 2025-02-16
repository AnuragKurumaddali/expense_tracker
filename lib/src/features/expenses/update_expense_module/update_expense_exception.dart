import '../../../user_interface/_event_imports.dart';

sealed class UpdateExpenseException extends BasicException {
  const UpdateExpenseException();
}

class DefaultUpdateExpenseException extends UpdateExpenseException {
  const DefaultUpdateExpenseException();
}
