import 'package:go_router/go_router.dart';
import '../../_page_imports.dart';
import '../../add_expense/add_expense_page.dart';
import '../../add_expense/add_expense_page_bloc.dart';
import '../../dashboard/dashboard_page.dart';
import '../../dashboard/dashboard_page_bloc.dart';
import '../../splash/splash_page.dart';

class AppRoute {
  AppRoute._();

  static const splash = '/';
  static const login = '/login';
  static const dashboard = '/dashboard';
  static const addExpense = '/add_expense';
}

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoute.splash,
    routes: [
      GoRoute(
          path: AppRoute.splash,
          builder: (context, state) => const SplashPage()),
      GoRoute(
        path: AppRoute.dashboard,
        builder: (context, state) => BlocProvider(
          create: (_) => getIt.get<DashboardPageBloc>(),
          child: const DashboardPage(),
        ),
      ),
      GoRoute(
        path: AppRoute.addExpense,
        builder: (context, state) => BlocProvider(
          create: (_) => getIt.get<AddExpensePageBloc>(),
          child: const AddExpensePage(),
        ),
      ),
    ],
  );
}
