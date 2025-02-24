import 'package:expense_tracker/src/user_interface/_core/design_system/layouts/_imports.dart';
import 'myapp.dart';
import 'src/composition/injection.dart';
import 'src/user_interface/_page_imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0x2D000000),
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
}
