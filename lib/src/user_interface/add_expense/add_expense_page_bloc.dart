import '../../features/expenses/add_expense_module/add_expense.dart';
import '../../features/expenses/update_expense_module/update_expense.dart';
import '../../features/expenses/use_case_factory.dart';
import '../_bloc_imports.dart';
import 'add_expense_page_event.dart';
import 'add_expense_page_state.dart';

export 'add_expense_page_event.dart';
export 'add_expense_page_state.dart';

@injectable
class AddExpensePageBloc extends UseCaseBloc<AddExpensePageEvent, AddExpensePageState> {
  final AddExpenseModuleUseCaseFactory _expenseUseCases;

  AddExpensePageBloc(this._expenseUseCases, UseCaseEngine useCaseEngine)
      : super(AddExpensePageState.initial(), useCaseEngine) {
    on<ValidateExpenseFields>((event, emit) {
      if (state.expenseData.amount <= 0) {
        emit(state.copyWith(
          validationMessage: "Please enter the amount greater than zero",
          isFormValid: false,
        ));
      } else if (state.expenseData.category.isEmpty) {
        emit(state.copyWith(
          validationMessage: "Please select the valid Category",
          isFormValid: false,
        ));
      } else if (state.expenseData.description.isEmpty) {
        emit(state.copyWith(
          validationMessage:
              "Description field is mandatory and cannot be left empty",
          isFormValid: false,
        ));
      } else {
        emit(state.copyWith(
          validationMessage: "",
          isFormValid: true,
        ));
      }
    });

    registerUseCase2(
      _expenseUseCases.updateExpense,
      (UpdateAmount event) =>
          UpdateExpenseRequest.amount(event.amount, state.expenseData),
      (Task<UpdateExpenseResponse> response) => response.maybeWhen(
        done: (value) {
          final data = value as UpdateExpenseResponse;
          add(const ValidateExpenseFields());
          return state.copyWith(expenseData: data.expenseData);
        },
        failed: (error) => state.copyWith(error: error),
        orElse: () => state,
      ),
    );

    registerUseCase2(
      _expenseUseCases.updateExpense,
      (UpdateCategory event) =>
          UpdateExpenseRequest.category(event.category, state.expenseData),
      (Task<UpdateExpenseResponse> response) => response.maybeWhen(
        done: (value) {
          final data = value as UpdateExpenseResponse;
          add(const ValidateExpenseFields());
          return state.copyWith(selectedCategory: data.expenseData.category,expenseData: data.expenseData);
        },
        failed: (error) => state.copyWith(error: error),
        orElse: () => state,
      ),
    );

    registerUseCase2(
      _expenseUseCases.updateExpense,
      (UpdateDateTime event) =>
          UpdateExpenseRequest.date(event.dateTime, state.expenseData),
      (Task<UpdateExpenseResponse> response) => response.maybeWhen(
        done: (value) {
          final data = value as UpdateExpenseResponse;
          add(const ValidateExpenseFields());
          return state.copyWith(selectedDate: data.expenseData.date,expenseData: data.expenseData);
        },
        failed: (error) => state.copyWith(error: error),
        orElse: () => state,
      ),
    );

    registerUseCase2(
      _expenseUseCases.updateExpense,
      (UpdateDescription event) => UpdateExpenseRequest.description(
          event.description, state.expenseData),
      (Task<UpdateExpenseResponse> response) => response.maybeWhen(
        done: (value) {
          final data = value as UpdateExpenseResponse;
          add(const ValidateExpenseFields());
          return state.copyWith(expenseData: data.expenseData);
        },
        failed: (error) => state.copyWith(error: error),
        orElse: () => state,
      ),
    );

    registerStreamUseCase2(
        _expenseUseCases.addExpense,
        (SaveExpenseEvent event) => AddExpenseRequest(state.expenseData),
        (Task<AddExpenseResponse> response) => response
            .maybeWhen(
              failed: (error) => state.copyWith(error: error),
              orElse: () => state,
            )
            .copyWith(addExpenseTask: response));
  }
}

extension AddExpenseBlocExtensions on BuildContext {
  AddExpensePageBloc get bloc => read<AddExpensePageBloc>();
}
