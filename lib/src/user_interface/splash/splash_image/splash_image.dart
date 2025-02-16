import '../../_core/design_system/layouts/_imports.dart';
import '../../_page_imports.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(fit: BoxFit.cover, Assets.images.splashOne);
  }
}
