import 'package:expense_tracker/src/user_interface/dashboard/dialogs/widgets/add_expense_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  testWidgets('AddExpenseButton should be disabled when form is invalid', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AddExpenseButton(isFormValid: false,validationMessage: "Test Data",)));

    final button = find.byType(ElevatedButton);

    expect(tester.widget<ElevatedButton>(button).enabled, false);
  });

  testWidgets('AddExpenseButton should be enabled when form is valid', (WidgetTester tester) async {
    bool pressed = false;
    await tester.pumpWidget(const MaterialApp(home: AddExpenseButton(isFormValid: true,validationMessage: "",)));

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(pressed, true);
  });
}
