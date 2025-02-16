import '../_imports.dart';

@Singleton(as: HorizontalSpaces)
class TabletHorizontalSpaces extends HorizontalSpaces {
  const TabletHorizontalSpaces();

  @override
  final none = const SizedBox(width: 0);
  @override
  final one = const SizedBox(width: 1);
  @override
  final nano = const SizedBox(width: 2);
  @override
  final xxs = const SizedBox(width: 4);
  @override
  final extraSmall = const SizedBox(width: 8);
  @override
  final small = const SizedBox(width: 12);
  @override
  final regular = const SizedBox(width: 16);
  @override
  final large = const SizedBox(width: 24);
  @override
  final extraLarge = const SizedBox(width: 32);
  @override
  final xxl = const SizedBox(width: 40);
  @override
  final xxxl = const SizedBox(width: 48);
  @override
  final huge = const SizedBox(width: 64);

  @override
  final betweenSelectorItems = 24;
}
