import '../../_bloc_imports.dart';
import '../../_core/design_system/layouts/_imports.dart';
import '../dashboard_page_bloc.dart';
import 'yearly_expense_list_item.dart';

class YearlyExpenseList extends StatelessWidget {
  const YearlyExpenseList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState,
        DashboardPageState>(
        selector: (state) => state,
        builder: (context, data) {
        return Expanded(
          child: ListView(
            children: data.yearlyGroupedExpenses.entries.map((yearEntry) {
              return YearlyExpenseListItem(yearExpenses: yearEntry);
            }).toList(),
          ),
        );
      }
    );
  }
}
