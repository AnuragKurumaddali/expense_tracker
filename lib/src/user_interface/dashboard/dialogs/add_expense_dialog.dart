import 'package:expense_tracker/src/user_interface/_bloc_imports.dart';
import 'package:expense_tracker/src/user_interface/_page_imports.dart';
import 'package:expense_tracker/src/user_interface/dashboard/dashboard_page_bloc.dart';

import '../../_core/design_system/layouts/_imports.dart';
import '../../_core/design_system/widgets/snackbar/custom_snackbar.dart';
import 'widgets/add_expense_button.dart';
import 'widgets/category_selection_view.dart';
import 'widgets/expense_amount_field.dart';
import 'widgets/expense_date_field.dart';
import 'widgets/expense_description_field.dart';

class AddExpenseDialog extends StatefulWidget {
  const AddExpenseDialog({super.key});

  @override
  State<AddExpenseDialog> createState() => _AddExpenseDialogState();
}

class _AddExpenseDialogState extends State<AddExpenseDialog> {

  late TextEditingController titleController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<DashboardPageBloc, DashboardPageState>(
      listener: (context, state) {
        if (state.addExpenseTask.isDone == true) {
          CustomSnackbar.show(
              context: context, message: 'Expense Added Successfully');
          const Events.resetTasks('addExpenseTask').publish(context);
          context.pop();
        }
      },
      builder: (context, data) {
        titleController.text = data.expenseData.amount.toString();
        descriptionController.text = data.expenseData.description;
        return Dialog(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 462, maxWidth: 400),
            child: BasicPage(
              padding: Particles.paddings.nano,
              showBackNav: true,
              title: 'Add New Expenses',
              isColoredAppBar: true,
              child: data.addExpenseTask.isRunning
                  ? const Center(child: CircularProgressIndicator())
                  : ColoredBox(
                      color: Colors.white,
                      child: Padding(
                        padding: Particles.paddings.regular,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ExpenseAmountField(
                                  amountController: titleController),
                              Particles.verticalSpaces.regular,
                              const CategorySelectionView(),
                              Particles.verticalSpaces.regular,
                              const ExpenseDateField(),
                              Particles.verticalSpaces.regular,
                              ExpenseDescriptionField(
                                  descriptionController: descriptionController),
                              Particles.verticalSpaces.regular,
                              AddExpenseButton(isFormValid: data.isFormValid,
                                validationMessage: data.validationMessage,),
                            ],
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
