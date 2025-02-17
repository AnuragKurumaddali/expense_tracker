import '../../features/expenses/entities/expense_data.dart';
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
    required ExpenseData expenseData,
    required String validationMessage,
    required String selectedCategory,
    required DateTime selectedDate,
    required List<String> lsCategories,
    required bool isFormValid,
    required Task<void> pageLoadTask,
    required Task<void> addExpenseTask,
    required Task<void> getCategoriesTask,
  }) = _DashboardPageState;

  factory DashboardPageState.initial() {
    return DashboardPageState(
      error: const EmptyException(),
      lsExpenses: [],
      expenseData: ExpenseData.empty(),
      lsCategories: ['Food', 'Travel', 'Shopping', 'Entertainment', 'Other'],
      selectedCategory: "",
      selectedDate: DateTime.now(),
      validationMessage: "",
      isFormValid: false,
      addExpenseTask: const Task.idle(),
      getCategoriesTask: const Task.idle(),
      pageLoadTask: const Task.idle(),
    );
  }

  DashboardPageState forceUpdate() {
    return copyWith(stateId: StateId());
  }
}
