// ignore_for_file: avoid_redundant_argument_values, use_named_constants

import '../_imports.dart';

@Singleton(as: Opacities)
class TabletOpacities extends Opacities {
  const TabletOpacities();

  @override
  final primary = 1.0;

  @override
  final disabledText = 0.48;
}
