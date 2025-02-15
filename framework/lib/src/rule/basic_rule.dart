import '../error_handling/handled_exception.dart';
import 'rule.dart';

abstract class BasicRule<FACT extends Object?, VALUE extends Object?> extends Rule<FACT, VALUE> {
  @override
  final FACT fact;
  VALUE get value;
  HandledException get exception;

  const BasicRule(this.fact);

  bool isSatisfied();

  @override
  VALUE execute() {
    return isSatisfied() ? value : throw exception;
  }
}
