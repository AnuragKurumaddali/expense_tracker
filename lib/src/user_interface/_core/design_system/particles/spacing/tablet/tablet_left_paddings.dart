import '../_imports.dart';

@Singleton(as: LeftPaddings)
class TabletLeftPaddings extends LeftPaddings {
  const TabletLeftPaddings();

  @override
  final none = EdgeInsets.zero;
  @override
  final one = const EdgeInsets.only(left: 1);
  @override
  final nano = const EdgeInsets.only(left: 2);
  @override
  final xxs = const EdgeInsets.only(left: 4);
  @override
  final extraSmall = const EdgeInsets.only(left: 8);
  @override
  final small = const EdgeInsets.only(left: 12);
  @override
  final regular = const EdgeInsets.only(left: 16);
  @override
  final large = const EdgeInsets.only(left: 24);
  @override
  final extraLarge = const EdgeInsets.only(left: 32);
  @override
  final xxl = const EdgeInsets.only(left: 40);
  @override
  final xxxl = const EdgeInsets.only(left: 48);
  @override
  final huge = const EdgeInsets.only(left: 64);
}
