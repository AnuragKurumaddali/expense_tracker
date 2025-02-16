import '_imports.dart';

class Swapper extends StatelessWidget {
  final bool condition;
  final Widget child1;
  final Widget child2;

  const Swapper({
    super.key,
    required this.condition,
    required this.child1,
    required this.child2,
  });

  @override
  Widget build(BuildContext context) {
    return condition ? child1 : child2;
  }
}
