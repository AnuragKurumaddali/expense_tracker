import 'package:expense_tracker/src/user_interface/dashboard/dialogs/add_expense_dialog.dart';
import 'package:expense_tracker/src/user_interface/dashboard/widgets/daily_expense_list.dart';
import 'package:expense_tracker/src/user_interface/dashboard/widgets/total_summary_card.dart';
import 'package:expense_tracker/src/user_interface/dashboard/widgets/yearly_expense_list.dart';

import '../_bloc_imports.dart';
import '../_core/constants/AppConstants.dart';
import '../_core/design_system/layouts/_imports.dart';
import '../_page_imports.dart';
import 'dashboard_page_bloc.dart';
import 'widgets/monthly_expense_list.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState, DashboardPageState>(
      selector: (state) => state,
      builder: (context, data) {
        return BasicPage.home(
          padding: Particles.paddings.none,
          isColoredAppBar: true,
          bottomBar: const SizedBox(),
          fab: FloatingActionButton(
            key: const Key('addExpenseButton'),
            onPressed: () => _showAddExpenseDialog(context: context),
            backgroundColor: Colors.black,
            child: const Icon(Icons.add, color: Colors.white),
          ),
          child: data.pageLoadTask.isRunning
              ? const Center(
            child: CircularProgressIndicator(color: Colors.black),
          )
              : ColoredBox(
            color: Colors.white,
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Padding(
                    padding: Particles.paddings.extraSmall,
                    child: const TabBar(
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(text: AppConstants.allTab),
                        Tab(text: AppConstants.currentYearTab),
                        Tab(text: AppConstants.currentMonthTab),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _buildGroupedExpensesTab(AppConstants.allKey),
                        _buildGroupedExpensesTab(AppConstants.currentYearKey),
                        _buildGroupedExpensesTab(AppConstants.currentMonthKey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildGroupedExpensesTab(String tabType) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TotalSummaryCard(tabType: tabType,),
        ),
        _buildExpenseList(tabType),
      ],
    );
  }

  Widget _buildExpenseList(String tabType) {
    if (tabType == AppConstants.allKey) {
      return const YearlyExpenseList();
    }

    if (tabType == AppConstants.currentYearKey) {
      return const MonthlyExpenseList();
    }

    if (tabType == AppConstants.currentMonthKey) {
      return const DailyExpenseList();
    }

    return Container();
  }

  void _showAddExpenseDialog({
    required BuildContext context,
  }) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext contex) {
        return BlocProvider.value(
          value: BlocProvider.of<DashboardPageBloc>(context),
          child: Builder(
            builder: (context) => const AddExpenseDialog(),
          ),
        );
      },
    );
  }
}

