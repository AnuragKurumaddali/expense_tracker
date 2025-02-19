import '../../../features/expenses/entities/expense.dart';
import '../../_core/design_system/layouts/_imports.dart';
import '../../_page_imports.dart';
import '../dashboard_page_bloc.dart';

class ExpenseListItem extends StatelessWidget {
  final Expense expenseItem;

  const ExpenseListItem({
    super.key,
    required this.expenseItem,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState,
        DashboardPageState>(
      selector: (state) => state,
      builder: (context, data) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          elevation: 6,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.euro_symbol,
                        color: Colors.green, size: 18),
                    Particles.horizontalSpaces.extraSmall,
                    Text(
                      expenseItem.amount.toString(),
                      style: Particles.textStyles.titleLargeSemiBold,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.category, color: Colors.blue, size: 18),
                    Particles.horizontalSpaces.extraSmall,
                    Text(
                      expenseItem.category,
                      style: Particles.textStyles.titleLargeBold,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.calendar_today,
                        color: Colors.orange, size: 18),
                    Particles.horizontalSpaces.extraSmall,
                    Text(
                      data.getModifiedDate(expenseItem.date),
                      style: Particles.textStyles.titleLargeBold,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.description,
                        color: Colors.purple, size: 18),
                    Particles.horizontalSpaces.extraSmall,
                    Expanded(
                      child: Text(
                        expenseItem.description,
                        style: Particles.textStyles.titleLargeBold,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
