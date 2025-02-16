import '../_imports.dart';

@Singleton(as: VerticalPaddings)
class TabletVerticalPaddings extends VerticalPaddings {
  const TabletVerticalPaddings();

  @override
  final none = EdgeInsets.zero;
  @override
  final one = const EdgeInsets.symmetric(vertical: 1);
  @override
  final nano = const EdgeInsets.symmetric(vertical: 2);
  @override
  final xxs = const EdgeInsets.symmetric(vertical: 4);
  @override
  final extraSmall = const EdgeInsets.symmetric(vertical: 8);
  @override
  final small = const EdgeInsets.symmetric(vertical: 12);
  @override
  final regular = const EdgeInsets.symmetric(vertical: 16);
  @override
  final large = const EdgeInsets.symmetric(vertical: 24);
  @override
  final extraLarge = const EdgeInsets.symmetric(vertical: 32);
  @override
  final xxl = const EdgeInsets.symmetric(vertical: 40);
  @override
  final xxxl = const EdgeInsets.symmetric(vertical: 48);
  @override
  final huge = const EdgeInsets.symmetric(vertical: 64);
}
