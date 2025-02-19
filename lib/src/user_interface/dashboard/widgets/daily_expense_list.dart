import '../../_bloc_imports.dart';
import '../../_core/design_system/layouts/_imports.dart';
import '../dashboard_page_bloc.dart';
import 'expense_list_item.dart';

class DailyExpenseList extends StatelessWidget {
  const DailyExpenseList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState,
        DashboardPageState>(
        selector: (state) => state,
        builder: (context, data) {
        return Expanded(
          child: ListView(
            children: data.currentMonthExpenses.map((expense) => ExpenseListItem(expenseItem: expense)).toList(),
          ),
        );
      }
    );
  }
}
