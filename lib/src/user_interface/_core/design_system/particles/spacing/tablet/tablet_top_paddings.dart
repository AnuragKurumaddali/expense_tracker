import '../_imports.dart';

@Singleton(as: TopPaddings)
class TabletTopPaddings extends TopPaddings {
  const TabletTopPaddings();

  @override
  final none = EdgeInsets.zero;
  @override
  final one = const EdgeInsets.only(top: 1);
  @override
  final nano = const EdgeInsets.only(top: 2);
  @override
  final xxs = const EdgeInsets.only(top: 4);
  @override
  final extraSmall = const EdgeInsets.only(top: 8);
  @override
  final small = const EdgeInsets.only(top: 12);
  @override
  final regular = const EdgeInsets.only(top: 16);
  @override
  final large = const EdgeInsets.only(top: 24);
  @override
  final extraLarge = const EdgeInsets.only(top: 32);
  @override
  final xxl = const EdgeInsets.only(top: 40);
  @override
  final xxxl = const EdgeInsets.only(top: 48);
  @override
  final huge = const EdgeInsets.only(top: 64);
}
