import '../../../_core/design_system/layouts/_imports.dart';
import '../../../_core/design_system/widgets/text_fields/primary_text_field.dart';
import '../../dashboard_page_event.dart';

class ExpenseAmountField extends StatelessWidget {
  final TextEditingController amountController;

  const ExpenseAmountField({super.key, required this.amountController});

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      key: const Key('expenseAmountField'),
      hintText: 'Amount',
      controller: amountController,
      prefixIcon:  const Icon(Icons.euro, color: Colors.black, size: 14,),
      keyboardType: TextInputType.number,
      onChanged: (v) => Events.updateAmount(v).publish(context),
    );
  }
}
