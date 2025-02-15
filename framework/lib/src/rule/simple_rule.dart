import '../error_handling/handled_exception.dart';
import 'rule.dart';

abstract class SimpleRule<FACT extends Object?> extends Rule<FACT, FACT> {
  @override
  final FACT fact;
  HandledException get exception;

  const SimpleRule(this.fact);

  bool isSatisfied();

  @override
  FACT execute() {
    return isSatisfied() ? fact : throw exception;
  }
}
