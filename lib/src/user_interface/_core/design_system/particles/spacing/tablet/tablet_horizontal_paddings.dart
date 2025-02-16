import '../_imports.dart';

@Singleton(as: HorizontalPaddings)
class TabletHorizontalPaddings extends HorizontalPaddings {
  const TabletHorizontalPaddings();

  @override
  final none = EdgeInsets.zero;
  @override
  final one = const EdgeInsets.symmetric(horizontal: 1);
  @override
  final nano = const EdgeInsets.symmetric(horizontal: 2);
  @override
  final xxs = const EdgeInsets.symmetric(horizontal: 4);
  @override
  final extraSmall = const EdgeInsets.symmetric(horizontal: 8);
  @override
  final small = const EdgeInsets.symmetric(horizontal: 12);
  @override
  final regular = const EdgeInsets.symmetric(horizontal: 16);
  @override
  final large = const EdgeInsets.symmetric(horizontal: 24);
  @override
  final extraLarge = const EdgeInsets.symmetric(horizontal: 32);
  @override
  final xxl = const EdgeInsets.symmetric(horizontal: 40);
  @override
  final xxxl = const EdgeInsets.symmetric(horizontal: 48);
  @override
  final huge = const EdgeInsets.symmetric(horizontal: 64);
}
