import 'package:expense_tracker/src/user_interface/_core/design_system/layouts/_imports.dart';

import 'src/user_interface/_imports.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}