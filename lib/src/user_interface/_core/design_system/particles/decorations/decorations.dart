import '_imports.dart';

abstract class Shadows {
  const Shadows();

  List<BoxShadow> get primary;
}

abstract class Opacities {
  const Opacities();

  double get primary;

  double get disabledText;
}
