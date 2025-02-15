import 'rule.dart';

abstract class CustomRule<FACT extends Object?, VALUE extends Object?> extends Rule<FACT, VALUE> {
  @override
  final FACT fact;

  const CustomRule(this.fact);
}
