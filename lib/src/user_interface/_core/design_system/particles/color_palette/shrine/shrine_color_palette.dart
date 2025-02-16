import '../_imports.dart';
import 'shrine_colors.dart';

@Singleton(as: ColorPalette)
class ShrineColorPalette extends ColorPalette {
  const ShrineColorPalette();

  @override
  final brightness = Brightness.light;
  @override
  final colors = const ShrineColors();
}
