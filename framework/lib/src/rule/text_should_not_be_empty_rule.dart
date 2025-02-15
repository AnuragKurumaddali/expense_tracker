import 'simple_rule.dart';

abstract class TextShouldNotBeEmptyRule extends SimpleRule<String> {
  const TextShouldNotBeEmptyRule(super.fact);

  @override
  bool isSatisfied() {
    return fact.isNotEmpty;
  }
}
