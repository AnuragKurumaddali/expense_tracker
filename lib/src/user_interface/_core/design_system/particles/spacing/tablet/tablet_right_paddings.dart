import '../_imports.dart';

@Singleton(as: RightPaddings)
class TabletRightPaddings extends RightPaddings {
  const TabletRightPaddings();

  @override
  final none = EdgeInsets.zero;
  @override
  final one = const EdgeInsets.only(right: 1);
  @override
  final nano = const EdgeInsets.only(right: 2);
  @override
  final xxs = const EdgeInsets.only(right: 4);
  @override
  final extraSmall = const EdgeInsets.only(right: 8);
  @override
  final small = const EdgeInsets.only(right: 12);
  @override
  final regular = const EdgeInsets.only(right: 16);
  @override
  final large = const EdgeInsets.only(right: 24);
  @override
  final extraLarge = const EdgeInsets.only(right: 32);
  @override
  final xxl = const EdgeInsets.only(right: 40);
  @override
  final xxxl = const EdgeInsets.only(right: 48);
  @override
  final huge = const EdgeInsets.only(right: 64);
}
