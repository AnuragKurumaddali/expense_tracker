import 'package:intl/intl.dart';

import '../../features/expenses/entities/expense_data.dart';
import '../_core/constants/AppConstants.dart';
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
    required double totalAllValue,
    required double totalYearlyValue,
    required double totalMonthlyValue,
    required List<Expense> currentMonthExpenses,
    required Map<String, List<Expense>> groupedExpenses,
    required Map<int, List<Expense>> monthlyGroupedExpenses,//key integer month
    required Map<int, Map<int, List<Expense>>> yearlyGroupedExpenses,//key year and month
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
      totalAllValue: 0.0,
      totalYearlyValue: 0.0,
      totalMonthlyValue: 0.0,
      currentMonthExpenses: [],
      groupedExpenses: {},
      monthlyGroupedExpenses: {},
      yearlyGroupedExpenses: {},
      isFormValid: false,
      addExpenseTask: const Task.idle(),
      getCategoriesTask: const Task.idle(),
      pageLoadTask: const Task.idle(),
    );
  }

  String getOrdinal(int day) {
    if (day >= 11 && day <= 13) {
      return '${day}th';
    }
    switch (day % 10) {
      case 1:
        return '${day}st';
      case 2:
        return '${day}nd';
      case 3:
        return '${day}rd';
      default:
        return '${day}th';
    }
  }

  String getModifiedDate(DateTime date){
    String formattedDate = DateFormat('d MMMM, yyyy').format(date);
    int day = date.day;
    return formattedDate.replaceFirst(day.toString(), getOrdinal(day));
  }

  Map<String, List<Expense>> groupExpensesByDate(List<Expense> expenses) {
    Map<String, List<Expense>> grouped = {
      AppConstants.allKey: [],
      AppConstants.currentYearKey: [],
      AppConstants.currentMonthKey: [],
    };

    DateTime now = DateTime.now();
    for (var expense in expenses) {
      if (expense.date.year == now.year) {
        grouped[AppConstants.currentYearKey]!.add(expense);
        if (expense.date.month == now.month) {
          grouped[AppConstants.currentMonthKey]!.add(expense);
        }
      }
      grouped[AppConstants.allKey]!.add(expense);
    }

    return grouped;
  }

  double totalYearlyAmount(List<Expense> expenses) {
    double total = 0.0;

    for (var expense in expenses) {
      if (expense.date.year == DateTime.now().year) {
        total += expense.amount;
      }
    }

    return total;
  }

  double totalMonthlyAmount(List<Expense> expenses) {
    double total = 0.0;

    for (var expense in expenses) {
      if (expense.date.year == DateTime.now().year && expense.date.month == DateTime.now().month) {
        total += expense.amount;
      }
    }

    return total;
  }

  double totalAllAmount(List<Expense> expenses) {
    double total = 0.0;

    for (var expense in expenses) {
      total += expense.amount;
    }

    return total;
  }

  Map<int, List<Expense>> getMonthlyGroupedExpenses(List<Expense> expenses){
    Map<int, List<Expense>> monthlyGrouped = {};

    for (var expense in expenses) {
      int month = expense.date.month;

      if (!monthlyGrouped.containsKey(month)) {
        monthlyGrouped[month] = [];
      }

      monthlyGrouped[month]!.add(expense);
    }

    return monthlyGrouped;
  }

  Map<int, Map<int, List<Expense>>> getYearlyGroupedExpenses(List<Expense> expenses){
    Map<int, Map<int, List<Expense>>> yearlyGrouped = {};

    for (var expense in expenses) {
      int year = expense.date.year;
      int month = expense.date.month;

      if (!yearlyGrouped.containsKey(year)) {
        yearlyGrouped[year] = {};
      }

      if (!yearlyGrouped[year]!.containsKey(month)) {
        yearlyGrouped[year]![month] = [];
      }

      yearlyGrouped[year]![month]!.add(expense);
    }

    return yearlyGrouped;
  }


}
