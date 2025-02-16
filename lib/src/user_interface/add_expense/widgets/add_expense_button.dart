import '../../_core/design_system/layouts/_imports.dart';
import '../../_core/design_system/widgets/buttons/planar_button.dart';
import '../add_expense_page_event.dart';

class AddExpenseButton extends StatelessWidget {
  final bool isFormValid;
  const AddExpenseButton({super.key, required this.isFormValid});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: PlanarButton(
          disabled: !isFormValid,
          label: 'Save Expense',
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            isFormValid ? const Events.addExpense().publish(context) : null;}
        ),
      ),
    );
  }
}
