import '../_state_imports.dart';
import '../../features/expenses/entities/expense.dart';

part 'dashboard_page_state.freezed.dart';

@freezed
class DashboardPageState with _$DashboardPageState implements UiState {
  const DashboardPageState._();

  const factory DashboardPageState({
    StateId? stateId,
    required HandledException error,
    required List<Expense> lsExpenses,
    required Task<void> pageLoadTask,
  }) = _DashboardPageState;

  factory DashboardPageState.initial() {
    return const DashboardPageState(
      error: EmptyException(),
      lsExpenses: [],
      pageLoadTask: Task.idle(),
    );
  }

  DashboardPageState forceUpdate() {
    return copyWith(stateId: StateId());
  }
}
