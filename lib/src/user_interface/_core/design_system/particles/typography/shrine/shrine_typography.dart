import '../_imports.dart';
import 'shrine_text_styles.dart';

@Singleton(as: Typography)
class TabletTypography extends Typography {
  TabletTypography();

  @override
  final textStyles = ShrineTextStyles();
}
