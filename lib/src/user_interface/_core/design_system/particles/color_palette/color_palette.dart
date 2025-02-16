import '_imports.dart';

export '_imports.dart' show Brightness, Colors, ColorScheme;

abstract class ColorPalette {
  const ColorPalette();

  Brightness get brightness;
  Colors get colors;

  ColorScheme getScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: colors.primary,
      secondary: colors.secondary,
      error: colors.error,
      surface: colors.surface,
      onPrimary: colors.onPrimary,
      onSecondary: colors.onSecondary,
      onError: colors.onError,
      onSurface: colors.onSurface,
    );
  }
}
