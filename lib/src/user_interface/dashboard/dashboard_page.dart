import 'package:expense_tracker/src/user_interface/dashboard/dialogs/add_expense_dialog.dart';

import '../_bloc_imports.dart';
import '../_core/design_system/layouts/_imports.dart';
import '../_page_imports.dart';
import 'dashboard_page_bloc.dart';
import 'widgets/expense_list_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState, DashboardPageState>(
      selector: (state) => state,
      builder: (contex, data) {
        return BasicPage.home(
          padding: Particles.paddings.none,
          isColoredAppBar: true,
          bottomBar: const SizedBox(),
          fab: FloatingActionButton(
            onPressed: () => _showAddExpenseDialog(context: context),
            backgroundColor: Colors.black,
            child: const Icon(Icons.add,color: Colors.white,), // Custom color for the button
          ),
          child: data.pageLoadTask.isRunning
              ? const Center(
                  child: CircularProgressIndicator(color: Colors.black),
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
                      )
                    ],
                  ),
                ),
        );
      },
    );
  }

  void _showAddExpenseDialog({
    required BuildContext context,
  }) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext contex) {
        return BlocProvider.value(
          value: BlocProvider.of<DashboardPageBloc>(context), // Pass the existing bloc to the dialog
          child: Builder(
            builder: (context) => const AddExpenseDialog(),
          ),
        );
      },
    );
  }
}
