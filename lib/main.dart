import 'package:expense_tracker/src/user_interface/_core/design_system/layouts/_imports.dart';
import 'myapp.dart';
import 'src/composition/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(const MyApp());
}
