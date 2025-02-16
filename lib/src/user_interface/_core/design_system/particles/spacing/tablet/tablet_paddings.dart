import '../_imports.dart';

@Singleton(as: Paddings)
class TabletPaddings extends Paddings {
  const TabletPaddings();

  @override
  final none = EdgeInsets.zero;
  @override
  final one = const EdgeInsets.all(1);
  @override
  final nano = const EdgeInsets.all(2);
  @override
  final xxs = const EdgeInsets.all(4);
  @override
  final extraSmall = const EdgeInsets.all(8);
  @override
  final small = const EdgeInsets.all(12);
  @override
  final regular = const EdgeInsets.all(16);
  @override
  final large = const EdgeInsets.all(24);
  @override
  final extraLarge = const EdgeInsets.all(32);
  @override
  final xxl = const EdgeInsets.all(40);
  @override
  final xxxl = const EdgeInsets.all(48);
  @override
  final huge = const EdgeInsets.all(64);

  @override
  final listItem = const EdgeInsets.fromLTRB(35, 10, 35, 10);
  @override
  final page = const EdgeInsets.fromLTRB(26, 0, 26, 0);
  @override
  final previewPage = const EdgeInsets.fromLTRB(64, 16, 64, 20);
  @override
  final dialog = const EdgeInsets.symmetric(horizontal: 32, vertical: 24);
  @override
  final button = const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
  @override
  final dialogButton = const EdgeInsets.all(4);
  @override
  final onboardingPage = const EdgeInsets.symmetric(horizontal: 48, vertical: 32);

  @override
  final rangeSlider = const EdgeInsets.symmetric(horizontal: 24);

  @override
  EdgeInsets get containedButton => const EdgeInsets.only(left: 10, top: 6, right: 10, bottom: 6);

  @override
  EdgeInsets get captureExpressionlistItem => const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10);

  @override
  EdgeInsets get patientListItem => const EdgeInsets.only(top: 12, bottom: 12);
}
