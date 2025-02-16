import '../add_expense_page_event.dart';
import '../../_core/design_system/layouts/_imports.dart';
import '../../_core/design_system/widgets/text_fields/primary_text_field.dart';

class ExpenseAmountField extends StatelessWidget {
  final TextEditingController amountController;

  const ExpenseAmountField({super.key, required this.amountController});

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      hintText: 'Amount',
      controller: amountController,
      onChanged: (v) => Events.updateAmount(v).publish(context),
    );
  }
}
