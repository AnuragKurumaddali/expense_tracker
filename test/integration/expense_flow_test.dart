import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:expense_tracker/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('User can add an expense and see it in the list', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('addExpenseButton')));
    await tester.pumpAndSettle();

    await tester.enterText(find.byKey(const Key('expenseAmountField')), '100');
    await tester.enterText(find.byKey(const Key('expenseDescriptionField')), 'Dinner');
    await tester.tap(find.byKey(const Key('saveExpenseButton')));
    await tester.pumpAndSettle();

    expect(find.text('Dinner'), findsOneWidget);
  });
}

