import 'package:expense_tracker/src/features/expenses/add_expense_module/add_expense.dart';
import 'package:expense_tracker/src/features/expenses/add_expense_module/add_expense_command.dart';
import 'package:expense_tracker/src/features/expenses/entities/expense.dart';
import 'package:expense_tracker/src/features/expenses/entities/expense_data.dart';
import 'package:expense_tracker/src/infrastructure/services/local_data_store/local_data_store_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockLocalDataStore extends Mock implements LocalDataStoreService {}
class MockAddExpenseCommandFactory extends Mock implements AddExpenseCommandFactory {}

void main() {
  late AddExpense addExpense;
  late MockLocalDataStore mockLocalDataStoreService;
  late MockAddExpenseCommandFactory mockAddExpenseCommandFactory;

  setUp(() {
    mockLocalDataStoreService = MockLocalDataStore();
    mockAddExpenseCommandFactory = MockAddExpenseCommandFactory();
    addExpense =
        AddExpense(AddExpenseRequest(ExpenseData.empty()), mockAddExpenseCommandFactory);
  });

  test('should add expense successfully', () async {
    final expense = Expense(
        amount: 100,
        category: 'Food',
        date: DateTime.now(),
        description: 'Groceries');

    when(mockLocalDataStoreService.saveExpense(expense)).thenAnswer((_) async => Future.value());

    final result = addExpense.execute();

    expect(result, isA<Stream>());
    verify(mockLocalDataStoreService.saveExpense(expense)).called(1);
  });
}
