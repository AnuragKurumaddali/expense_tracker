import 'rule.dart';

abstract class CustomSimpleRule<FACT extends Object?> extends Rule<FACT, FACT> {
  @override
  final FACT fact;

  const CustomSimpleRule(this.fact);
}
