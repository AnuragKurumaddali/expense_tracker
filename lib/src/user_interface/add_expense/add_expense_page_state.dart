import '../_state_imports.dart';
import '../../features/expenses/entities/expense_data.dart';

part 'add_expense_page_state.freezed.dart';

@freezed
class AddExpensePageState with _$AddExpensePageState implements UiState {
  const AddExpensePageState._();

  const factory AddExpensePageState({
    StateId? stateId,
    required HandledException error,
    required ExpenseData expenseData,
    required String validationMessage,
    required bool isFormValid,
    required Task<void> addExpenseTask,
    required Task<void> getCategoriesTask,
  }) = _AddExpenseState;

  factory AddExpensePageState.initial() {
    return AddExpensePageState(
      error: const EmptyException(),
      expenseData: ExpenseData.empty(),
      validationMessage: "",
      isFormValid: false,
      addExpenseTask: const Task.idle(),
      getCategoriesTask: const Task.idle(),
    );
  }
}
