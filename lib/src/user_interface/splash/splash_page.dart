import '../_core/design_system/layouts/_imports.dart';
import '../_page_imports.dart';
import 'splash_image/splash_image.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _hideNavigationBar();
    _showSplashScreen();
  }

  void _hideNavigationBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  void _restoreNavigationBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  void _showSplashScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      _restoreNavigationBar();
      context.go(AppRoute.dashboard);
      // context.go(AppRoute.addExpense);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        constraints: const BoxConstraints.expand(),
        child: const SplashImage(),
      );
  }
}
