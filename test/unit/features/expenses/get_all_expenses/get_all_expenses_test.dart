import 'package:expense_tracker/src/features/expenses/entities/expense.dart';
import 'package:expense_tracker/src/features/expenses/get_all_expenses/get_all_expenses.dart';
import 'package:expense_tracker/src/features/expenses/get_all_expenses/get_all_expenses_command.dart';
import 'package:expense_tracker/src/infrastructure/service_adapters/local_data_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetAllExpenseCommandFactory extends Mock implements GetAllExpensesCommandFactory {}
class MockLocalDataStore extends Mock implements LocalDataStore {}

void main() {
  late GetAllExpenses getAllExpenses;
  late MockLocalDataStore mockLocalDataStore;
  late MockGetAllExpenseCommandFactory mockGetAllExpenseCommandFactory;

  setUp(() async {
    mockLocalDataStore = MockLocalDataStore();
    mockGetAllExpenseCommandFactory = MockGetAllExpenseCommandFactory();
    getAllExpenses = GetAllExpenses(const GetAllExpensesRequest(), mockGetAllExpenseCommandFactory);
  });

  test('should return list of expenses', () async {
    final expenses = [
      Expense(amount: 50, category: 'Travel', date: DateTime.now(), description: 'Fuel')
    ];

    when(mockLocalDataStore.getAllExpenses()).thenAnswer((_) async => expenses);

    final result = getAllExpenses.execute().toList();

    expect(result, isA<List<Expense>>());
    expect(result, equals(expenses));

    verify(mockLocalDataStore.getAllExpenses()).called(1);
  });
}
