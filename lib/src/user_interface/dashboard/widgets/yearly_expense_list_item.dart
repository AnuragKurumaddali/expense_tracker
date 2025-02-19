import '../../../features/expenses/entities/expense.dart';
import '../../_core/design_system/layouts/_imports.dart';
import 'monthly_expense_list_item.dart';

class YearlyExpenseListItem extends StatelessWidget {
  final MapEntry<int, Map<int, List<Expense>>> yearExpenses;
  const YearlyExpenseListItem({super.key, required this.yearExpenses});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('Year ${yearExpenses.key}'),
      children: yearExpenses.value.entries.map((monthEntry) {
        return MonthlyExpenseListItem(monthlyExpenses: monthEntry);
      }).toList(),
    );
  }
}
