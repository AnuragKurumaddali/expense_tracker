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
    required String selectedCategory,
    required DateTime selectedDate,
    required List<String> lsCategories,
    required bool isFormValid,
    required Task<void> addExpenseTask,
    required Task<void> getCategoriesTask,
  }) = _AddExpensePageState;

  factory AddExpensePageState.initial() {
    return AddExpensePageState(
      error: const EmptyException(),
      expenseData: ExpenseData.empty(),
      lsCategories: ['Food', 'Travel', 'Shopping', 'Entertainment', 'Other'],
      selectedCategory: "",
      selectedDate: DateTime.now(),
      validationMessage: "",
      isFormValid: false,
      addExpenseTask: const Task.idle(),
      getCategoriesTask: const Task.idle(),
    );
  }
}
