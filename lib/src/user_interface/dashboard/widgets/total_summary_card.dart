import 'package:flutter_bloc/flutter_bloc.dart';

import '../../_core/constants/AppConstants.dart';
import '../../_core/design_system/layouts/_imports.dart';
import '../dashboard_page_bloc.dart';

class TotalSummaryCard extends StatelessWidget {
  final String tabType;

  const TotalSummaryCard({
    super.key,
    required this.tabType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState,
            DashboardPageState>(
        selector: (state) => state,
        builder: (context, data) {
          return Card(
            elevation: 4,
            color: Colors.white,
            child: Padding(
              padding: Particles.paddings.large,
              child: _getTotalSummaryView(tabType, data)
              ),
            );
        });
  }

  Widget _getTotalSummaryView(String tabType, DashboardPageState stateValue){
    switch (tabType) {
      case AppConstants.currentYearKey:
        return _expenseViewItem("${AppConstants.currentYearTab} Expenses Total", stateValue.totalYearlyValue);
      case AppConstants.currentMonthKey:
        return _expenseViewItem("${AppConstants.currentMonthTab} Expenses Total", stateValue.totalMonthlyValue);
      default:
        return _expenseViewItem("${AppConstants.allTab} Expenses Total", stateValue.totalAllValue);
    }
  }
  Widget _expenseViewItem(String expenseText, double expenseValue){
    return Column(children: [
      Text(expenseText, style: Particles.textStyles.titleMediumBlack),
      Text(
        '€ ${expenseValue.toStringAsFixed(2)}',
        style: Particles.textStyles.titleLargeSemiBold,
      ),
    ],);
  }
}
