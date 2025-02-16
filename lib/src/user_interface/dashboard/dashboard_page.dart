import '../_bloc_imports.dart';
import '../_core/design_system/layouts/_imports.dart';
import '../_core/design_system/widgets/buttons/planar_button.dart';
import '../_page_imports.dart';
import 'dashboard_page_bloc.dart';
import 'widgets/expense_list_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState, DashboardPageState>(
      selector: (state) => state,
      builder: (context, data) {
        return BasicPage.home(
          padding: Particles.paddings.none,
          bottomBar: const SizedBox(),
          child: data.pageLoadTask.isRunning
              ? const Center(
                  child: CircularProgressIndicator(color: Colors.green),
                )
              : ColoredBox(
                  color: Colors.white,
                  child: Stack(
                    children: [
                      ListView.separated(
                        itemCount: data.lsExpenses.length,
                        itemBuilder: (innerContext, i) {
                          final expenseItem = data.lsExpenses.elementAt(i);
                          return ExpenseListItem(expenseItem: expenseItem);
                        },
                        separatorBuilder: (innerContext, index) => Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                          indent: 16,
                          endIndent: 16,
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 16,
                        right: 16,
                        child: PlanarButton(
                          label: 'Add Expense',
                          onPressed: () => context.push(AppRoute.addExpense)
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
