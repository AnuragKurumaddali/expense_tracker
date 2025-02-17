import 'package:expense_tracker/src/user_interface/dashboard/dashboard_page_bloc.dart';
import 'package:intl/intl.dart';

import '../../_bloc_imports.dart';
import '../../_core/design_system/layouts/_imports.dart';

class ExpenseDateField extends StatelessWidget {
  final TextEditingController categoryController;

  const ExpenseDateField({super.key, required this.categoryController});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState, DashboardPageState>(
        selector: (state) => state,
        builder: (builderContext, data) {
        return InkWell(
          onTap: () async {
            DateTime dateTime = await _pickDate(context, data.selectedDate)??DateTime.now();
            Events.updateDateTime(dateTime).publish(context);
          } ,
          child: InputDecorator(
            decoration: const InputDecoration(
              labelText: 'Expense Date',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(DateFormat.yMMMd().format(data.selectedDate)),
                const Icon(Icons.calendar_today, color: Colors.black),
              ],
            ),
          ),
        );
      }
    );
  }

  Future<DateTime?> _pickDate(BuildContext context, DateTime selectedDate) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      currentDate: DateTime.now()
    );
    return pickedDate;

  }
}
