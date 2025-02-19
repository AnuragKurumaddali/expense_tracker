import 'package:expense_tracker/src/features/expenses/entities/expense_data.dart';
import 'package:expense_tracker/src/user_interface/_core/constants/AppConstants.dart';

import '../../features/expenses/add_expense_module/add_expense.dart';
import '../../features/expenses/get_all_expenses/get_all_expenses.dart';
import '../../features/expenses/update_expense_module/update_expense.dart';
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
              final totalYearlySummary = state.totalYearlyAmount(data.lsExpenses);
              final totalMonthlySummary = state.totalMonthlyAmount(data.lsExpenses);
              final totalAllSummary = state.totalAllAmount(data.lsExpenses);
              final mapOfExpenses = state.groupExpensesByDate(data.lsExpenses);
              final currentMonthExp = mapOfExpenses[AppConstants.currentMonthKey]??[];
              final mapOfMonthlyExpenses = state.getMonthlyGroupedExpenses(mapOfExpenses[AppConstants.currentYearKey]??[]);
              final mapOfYearlyExpenses = state.getYearlyGroupedExpenses(mapOfExpenses[AppConstants.allKey]??[]);
              return state.copyWith(lsExpenses: data.lsExpenses,
                  totalYearlyValue: totalYearlySummary,
                  totalMonthlyValue: totalMonthlySummary,
                  totalAllValue: totalAllSummary,
                  currentMonthExpenses: currentMonthExp,
                  monthlyGroupedExpenses: mapOfMonthlyExpenses,
                  yearlyGroupedExpenses: mapOfYearlyExpenses

              );
            },
            orElse: () => state,
          )
          .copyWith(pageLoadTask: response)
    );

    on<ValidateExpenseFields>((event, emit) {
      if (state.expenseData.amount.isEmpty || (double.tryParse(state.expenseData.amount)??0.0) <= 0) {
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
      } else if (state.expenseData.date == DateTime(2000)) {
        emit(state.copyWith(
          validationMessage: "Please select the date",
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
          done: (value) {
            final data = value as AddExpenseResponse;
            final expensesList = List.of(state.lsExpenses);
            expensesList.add(data.expense);
            final totalYearlySummary = state.totalYearlyAmount(expensesList);
            final totalMonthlySummary = state.totalMonthlyAmount(expensesList);
            final totalAllSummary = state.totalAllAmount(expensesList);
            final mapOfExpenses = state.groupExpensesByDate(expensesList);
            final currentMonthExp = mapOfExpenses[AppConstants.currentMonthKey]??[];
            final mapOfMonthlyExpenses = state.getMonthlyGroupedExpenses(mapOfExpenses[AppConstants.currentYearKey]??[]);
            final mapOfYearlyExpenses = state.getYearlyGroupedExpenses(mapOfExpenses[AppConstants.allKey]??[]);
            return state.copyWith(lsExpenses: expensesList,
                groupedExpenses: mapOfExpenses,
                totalYearlyValue: totalYearlySummary,
                totalMonthlyValue: totalMonthlySummary,
                totalAllValue: totalAllSummary,
                currentMonthExpenses: currentMonthExp,
                monthlyGroupedExpenses: mapOfMonthlyExpenses,
                yearlyGroupedExpenses: mapOfYearlyExpenses,
                expenseData: ExpenseData.empty(),
                selectedCategory: "",
                selectedDate: DateTime.now(),
                isFormValid: false,
                validationMessage: ""
            );
          },
          orElse: () => state,
        ).copyWith(addExpenseTask: response));

    on<ResetTasks>((event, emit) {
      switch (event.taskName) {
        case 'addExpenseTask':
          emit(state.copyWith(addExpenseTask: const Task.idle()));
          break;
      }
    });

    add(const OnPageLoaded());
  }
}

extension DashboardBlocExtensions on BuildContext {
  DashboardPageBloc get bloc => read<DashboardPageBloc>();
}
