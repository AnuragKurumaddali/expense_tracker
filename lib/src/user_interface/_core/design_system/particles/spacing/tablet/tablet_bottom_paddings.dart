import '../_imports.dart';

@Singleton(as: BottomPaddings)
class TabletBottomPaddings extends BottomPaddings {
  const TabletBottomPaddings();

  @override
  final none = EdgeInsets.zero;
  @override
  final one = const EdgeInsets.only(bottom: 1);
  @override
  final nano = const EdgeInsets.only(bottom: 2);
  @override
  final xxs = const EdgeInsets.only(bottom: 4);
  @override
  final extraSmall = const EdgeInsets.only(bottom: 8);
  @override
  final small = const EdgeInsets.only(bottom: 12);
  @override
  final regular = const EdgeInsets.only(bottom: 16);
  @override
  final large = const EdgeInsets.only(bottom: 24);
  @override
  final extraLarge = const EdgeInsets.only(bottom: 32);
  @override
  final xxl = const EdgeInsets.only(bottom: 40);
  @override
  final xxxl = const EdgeInsets.only(bottom: 48);
  @override
  final huge = const EdgeInsets.only(bottom: 64);
}
