import 'package:expense_tracker/src/user_interface/_bloc_imports.dart';
import '../_core/design_system/layouts/_imports.dart';
import '../_core/design_system/widgets/snackbar/custom_snackbar.dart';
import '../_page_imports.dart';
import 'add_expense_page_bloc.dart';
import 'widgets/add_expense_button.dart';
import 'widgets/category_selection_view.dart';
import 'widgets/expense_amount_field.dart';
import 'widgets/expense_date_field.dart';
import 'widgets/expense_description_field.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final categoryTextController = TextEditingController();
    // final categoryPopUpController = TextEditingController();

    return BlocConsumer<AddExpensePageBloc, AddExpensePageState>(
      listener: (context, state) {
        if (state.addExpenseTask.isDone == true) {
          CustomSnackbar.show(context: context, message: 'Expense Added Successfully');
          context.pop();
        }
      },
      builder: (context, data) {
        titleController.text = data.expenseData.amount.toString();
        categoryTextController.text = data.expenseData.category;
        descriptionController.text = data.expenseData.description;
        return BasicPage(
          padding: Particles.paddings.nano,
          title: 'Add New Expenses',
          isColoredAppBar: true,
          child: data.addExpenseTask.isRunning
              ? const Center(child: CircularProgressIndicator())
              : ColoredBox(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: Particles.paddings.regular,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Particles.verticalSpaces.regular,
                          ExpenseAmountField(amountController: titleController),
                          Particles.verticalSpaces.regular,
                          const CategorySelectionView(),
                          Particles.verticalSpaces.regular,
                          ExpenseDateField(categoryController: categoryTextController),
                          Particles.verticalSpaces.regular,
                          ExpenseDescriptionField(descriptionController: descriptionController),
                          Particles.verticalSpaces.regular,
                        ],
                      ),
                    ),
                  ),
                ),
                Particles.verticalSpaces.small,
                AddExpenseButton(isFormValid: data.isFormValid),
                Particles.verticalSpaces.small,
              ],
            ),
          ),
        );
      },
    );
  }
}