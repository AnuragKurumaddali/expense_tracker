import '../../_bloc_imports.dart';
import '../../_core/design_system/layouts/_imports.dart';
import '../dashboard_page_bloc.dart';
import 'monthly_expense_list_item.dart';

class MonthlyExpenseList extends StatelessWidget {
  const MonthlyExpenseList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState,
        DashboardPageState>(
        selector: (state) => state,
        builder: (context, data) {
        return Expanded(
          child: ListView(
            children: data.monthlyGroupedExpenses.entries.map((monthEntry) {
              return MonthlyExpenseListItem(monthlyExpenses: monthEntry);
            }).toList(),
          ),
        );
      }
    );
  }
}
