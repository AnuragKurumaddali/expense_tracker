import '../../../../composition/injection.dart' show getIt;
import 'color_palette/color_palette.dart';
import 'decorations/decorations.dart';
import 'sizing/sizes.dart';
import 'spacing/spacing.dart';
import 'typography/typography.dart';

class Particles {
  const Particles._();

  // Sizes
  static Sizes get sizes => getIt<Sizes>();

  // Spaces
  static HorizontalSpaces get horizontalSpaces => getIt<HorizontalSpaces>();
  static VerticalSpaces get verticalSpaces => getIt<VerticalSpaces>();

  // Paddings
  static Paddings get paddings => getIt<Paddings>();
  static HorizontalPaddings get horizontalPaddings => getIt<HorizontalPaddings>();
  static VerticalPaddings get verticalPaddings => getIt<VerticalPaddings>();
  static LeftPaddings get leftPaddings => getIt<LeftPaddings>();
  static RightPaddings get rightPaddings => getIt<RightPaddings>();
  static TopPaddings get topPaddings => getIt<TopPaddings>();
  static BottomPaddings get bottomPaddings => getIt<BottomPaddings>();

  // Typography
  static TextStyles get textStyles => getIt<Typography>().textStyles;
  static TextTheme Function() get getTextTheme => getIt<Typography>().getTextTheme;

  // Colors
  static Colors get colors => getIt<ColorPalette>().colors;
  static ColorScheme Function() get getColorScheme => getIt<ColorPalette>().getScheme;

  // BorderRadius
  static BorderRadiusCircular get borderRadiusCircular => getIt<BorderRadiusCircular>();

  // DropShadows
  static Shadows get shadows => getIt<Shadows>();

  // Opacities
  static Opacities get opacities => getIt<Opacities>();
}
