import 'package:expense_tracker/src/user_interface/_core/constants/AppConstants.dart';

import '../../../features/expenses/entities/expense.dart';
import '../../_core/design_system/layouts/_imports.dart';
import 'expense_list_item.dart';

class MonthlyExpenseListItem extends StatelessWidget {
  final MapEntry<int, List<Expense>> monthlyExpenses;

  const MonthlyExpenseListItem({super.key, required this.monthlyExpenses});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '${AppConstants.getMonthName(monthlyExpenses.key)} ',
              style: const TextStyle(fontWeight: FontWeight.bold), // Make this part bold
            ),
            const TextSpan(
              text: 'Month Expenses',
            ),
          ],
        ),
      ),
      children: monthlyExpenses.value
          .map((expense) => ExpenseListItem(expenseItem: expense))
          .toList(),
    );
  }
}
