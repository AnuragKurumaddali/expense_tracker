
import '../../features/expenses/get_all_expenses/get_all_expenses.dart';
import '../../features/expenses/use_case_factory.dart';
import '../_bloc_imports.dart';
import 'dashboard_page_event.dart';
import 'dashboard_page_state.dart';

export 'dashboard_page_event.dart';
export 'dashboard_page_state.dart';

@injectable
class DashboardPageBloc extends UseCaseBloc<DashboardPageEvent, DashboardPageState> {
  final AddExpenseModuleUseCaseFactory _expenseUseCases;

  DashboardPageBloc(this._expenseUseCases, UseCaseEngine useCaseEngine)
      : super(DashboardPageState.initial(), useCaseEngine) {
    registerStreamUseCase2(
      _expenseUseCases.getAllExpenses,
      (OnPageLoaded event) => const GetAllExpensesRequest(),
      (Task<GetAllExpensesResponse> response) => response
          .maybeWhen(
            failed: (error) => state.copyWith(error: error),
            done: (response) {
              final data = response as GetAllExpensesResponse;
              return state.copyWith(lsExpenses: data.lsExpenses);
            },
            orElse: () => state,
          )
          .copyWith(pageLoadTask: response)
    );

    add(const OnPageLoaded());
  }
}

extension DashboardBlocExtensions on BuildContext {
  DashboardPageBloc get bloc => read<DashboardPageBloc>();
}
