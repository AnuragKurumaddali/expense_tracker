import 'package:injectable/injectable.dart' show Singleton;

import '../_imports.dart';

@Singleton(as: Sizes)
class TabletSizes extends Sizes {
  const TabletSizes();

  @override
  final none = 0.0;
  @override
  final one = 1;
  @override
  final nano = 2;
  @override
  final xxs = 4;
  @override
  final extraSmall = 8;
  @override
  final small = 12;
  @override
  final regular = 16;
  @override
  final large = 24;
  @override
  final extraLarge = 28;
  @override
  final xxl = 40;
  @override
  final xxxl = 48;
  @override
  final huge = 64;

  @override
  double get splashDescriptionWidth => 208;
  @override
  double get checkBoxWidth => 120;
  @override
  double get buttonWidth => 160;
  @override
  double get buttonMinHeight => 48;
  @override
  double get buttonMinWidth => 120;
  @override
  Size get button => const Size(112, 48);
  @override
  Size get buttonMedium => const Size(110, 40);
  @override
  Size get buttonLarge => const Size(125, 40);
  @override
  Size get iconButton => const Size(40, 40);
}
