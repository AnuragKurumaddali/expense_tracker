import 'package:flutter/widgets.dart';

import '../_imports.dart';

@Singleton(as: BorderRadiusCircular)
class TabletBorderRadiusCircular extends BorderRadiusCircular {
  TabletBorderRadiusCircular();

  @override
  final none = BorderRadius.circular(0);
  @override
  final one = BorderRadius.circular(1);
  @override
  final nano = BorderRadius.circular(2);
  @override
  final xxs = BorderRadius.circular(4);
  @override
  final extraSmall = BorderRadius.circular(8);
  @override
  final small = BorderRadius.circular(12);
  @override
  final regular = BorderRadius.circular(16);
  @override
  final large = BorderRadius.circular(24);
  @override
  final extraLarge = BorderRadius.circular(32);
  @override
  final xxl = BorderRadius.circular(40);
  @override
  final xxxl = BorderRadius.circular(50);
  @override
  final huge = BorderRadius.circular(64);

  @override
  final button = BorderRadius.circular(24);

  @override
  final buttonSmall = BorderRadius.circular(14);
  @override
  final buttonMedium = BorderRadius.circular(20);
}
