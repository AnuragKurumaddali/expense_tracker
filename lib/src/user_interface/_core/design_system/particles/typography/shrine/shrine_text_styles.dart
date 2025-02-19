import 'dart:ui';

import '../_imports.dart';
import 'shrine_fonts.dart';

class ShrineTextStyles extends TextStyles {
  ShrineTextStyles();

  @override
  final displayLarge = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 32,
    fontWeight: FontWeight.w200,
    height: 1.22,
    color: Particles.colors.text,
  );

  @override
  final displayMedium = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 40,
    fontWeight: FontWeight.w200,
    height: 1.17,
    color: Particles.colors.text,
  );

  @override
  final displaySmall = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.17,
    color: Particles.colors.secondaryText,
  );

  @override
  final headlineLarge = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.17,
    color: Particles.colors.text,
  );

  @override
  final headlineMedium = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 24,
    fontWeight: FontWeight.normal,
    height: 1.17,
    color: Particles.colors.text,
  );

  @override
  final headlineSmall = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.17,
    color: Particles.colors.secondaryText,
  );

  @override
  final titleLarge = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 20,
    fontWeight: FontWeight.w300,
    height: 1.17,
    color: Particles.colors.text,
  );

  @override
  final titleLargeSemiBold = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.17,
    color: Particles.colors.secondaryText,
  );

  @override
  final titleMedium = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.17,
    color: Particles.colors.text,
  );

  @override
  final titleMediumBoldSmall = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: 1.17,
    color: Particles.colors.text,
  );

  @override
  final titleMediumBold = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: 1.17,
    color: Particles.colors.text,
  );

  @override
  final subtitleMedium = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.17,
    color: Particles.colors.secondaryText,
  );

  @override
  final titleSmall = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 1.17,
    color: Particles.colors.secondaryText,
  );

  @override
  final titleExtraSmall = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.17,
    color: Particles.colors.secondaryText,
  );

  @override
  final titleLargeBold = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.17,
    color: Particles.colors.text,
  );

  @override
  final bodyLarge = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.17,
    color: Particles.colors.secondaryText,
  );

  @override
  final bodyMedium = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.17,
    letterSpacing: 0,
    color: Particles.colors.secondaryText,
  );

  @override
  final bodySmall = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.17,
    letterSpacing: 0,
    color: Particles.colors.secondaryText,
  );

  @override
  final labelLarge = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 18,
    fontWeight: FontWeight.w800,
    height: 1.17,
    letterSpacing: 0,
    color: Particles.colors.secondaryText,
  );

  @override
  final labelMedium = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.17,
    color: Particles.colors.secondaryText,
    letterSpacing: 0,
  );

  @override
  final labelSmall = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 10,
    fontWeight: FontWeight.w600,
    height: 1.17,
    letterSpacing: 0,
    color: Particles.colors.secondaryText,
  );

  @override
  final displayNano = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.17,
    letterSpacing: 0,
    color: Particles.colors.primary,
  );

  @override
  final displayExtraSmall = TextStyle(
    fontFamily: ShrineFonts.primary,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.17,
    letterSpacing: 0,
    color: Particles.colors.secondaryText,
  );

  @override
  TextStyle get disabledButton => bodyLarge.copyWith(
    color: Particles.colors.disabledButtonForeground,
  );

  @override
  TextStyle get displaySmallPrimaryColor => bodyLarge.copyWith(
    color: Particles.colors.primary,
  );

  @override
  TextStyle get titleMediumBlack => bodyLarge.copyWith(
    color: Particles.colors.secondaryText,
  );

  @override
  TextStyle get headlineSmallBlack => headlineSmall.copyWith(
    color: Particles.colors.secondaryText,
  );

  @override
  TextStyle get error => bodySmall.copyWith(
    color: Particles.colors.error,
  );

  @override
  TextStyle get subtitleMediumLightGrey => bodySmall.copyWith(
    color: const Color(0xFF57636C),
  );

  @override
  TextStyle get subtitleSemiBoldLightGrey => bodyLarge.copyWith(
    color: const Color(0xFF57636C),
  );
}
