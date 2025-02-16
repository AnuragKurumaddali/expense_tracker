import '../_imports.dart';

class ShrineColors extends Colors {
  const ShrineColors();

  static const _foreground = Color(0xFF867564);
  static const _secondaryForeground = Color(0xFF000000);
  static const _inverseForeground = Color(0xFFFFFFFF);

  @override
  final primary = const Color(0xFF06B82D);
  @override
  final secondary = const Color(0x29A8927D);
  @override
  final error = const Color(0xFFFF0F00);
  @override
  final background = const Color(0xFFFFFFFF);
  @override
  final surface = const Color(0xFFFFFBFA);

  @override
  final onPrimary = _inverseForeground;
  @override
  final onSecondary = _foreground;
  @override
  final onError = _inverseForeground;
  @override
  final onBackground = _foreground;
  @override
  final onSurface = _foreground;

  @override
  final hover = const Color(0x99A8927D);
  @override
  final text = _foreground;
  @override
  final secondaryText = _secondaryForeground;
  @override
  final icon = _foreground;
  @override
  final disabledButtonForeground = const Color(0x66A8927D);

  @override
  Color get appYellow => const Color(0x66FFC52A);

  @override
  Color get lightGreen => const Color(0xFFEAF7E8);

  @override
  Color get grey => const Color(0xFF8F8F8F);

  @override
  Color get lightGrey => const Color(0xFFFBF9F9);
  @override
  Color get greenRegular => const Color(0xFF96F689);
  @override
  Color get orangeColor => const Color(0xFFFF6B30);
}
