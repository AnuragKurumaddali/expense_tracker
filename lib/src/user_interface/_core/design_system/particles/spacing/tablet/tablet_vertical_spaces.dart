import '../_imports.dart';

@Singleton(as: VerticalSpaces)
class TabletVerticalSpaces extends VerticalSpaces {
  const TabletVerticalSpaces();

  @override
  final none = const SizedBox(height: 0);
  @override
  final one = const SizedBox(height: 1);
  @override
  final nano = const SizedBox(height: 2);
  @override
  final xxs = const SizedBox(height: 4);
  @override
  final extraSmall = const SizedBox(height: 8);
  @override
  final small = const SizedBox(height: 12);
  @override
  final regular = const SizedBox(height: 16);
  @override
  final large = const SizedBox(height: 24);
  @override
  final extraLarge = const SizedBox(height: 32);
  @override
  final xxl = const SizedBox(height: 40);
  @override
  final xxxl = const SizedBox(height: 48);
  @override
  final huge = const SizedBox(height: 64);

  @override
  final betweenSelectorItems = 24;
}
