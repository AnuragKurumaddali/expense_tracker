import '../error_handling/handled_exception.dart';

abstract class Rule<FACT extends Object?, VALUE extends Object?> {
  FACT get fact;

  const Rule();

  VALUE execute();

  HandledException findError() {
    try {
      execute();
      return const NoException();
    } on HandledException catch (exception) {
      return exception;
    } catch (exception) {
      return SystemException(exception);
    }
  }
}
