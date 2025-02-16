import '../../../features/expenses/entities/expense.dart';
import '../../_core/design_system/layouts/_imports.dart';

class ExpenseListItem extends StatelessWidget {
  final Expense expenseItem;

  const ExpenseListItem({
    super.key,
    required this.expenseItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expenseItem.amount.toString(),
                  style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black87),
                ),
                Particles.horizontalSpaces.small,
                Text(
                  expenseItem.category,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                Particles.horizontalSpaces.small,
                Text(
                  expenseItem.description,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
