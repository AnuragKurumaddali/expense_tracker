import 'package:go_router/go_router.dart';
import '../../splash/splash_page.dart';

class AppRoute {
  AppRoute._();

  static const splash = '/';
  static const dashboard = '/dashboard';
}

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoute.splash,
    routes: [
      GoRoute(
          path: AppRoute.splash,
          builder: (context, state) => const SplashPage()),
    ],
  );
}
