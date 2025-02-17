import '../../_core/design_system/layouts/_imports.dart';
import '../../_core/design_system/widgets/text_fields/primary_text_field.dart';
import '../../dashboard/dashboard_page_bloc.dart';

class ExpenseAmountField extends StatelessWidget {
  final TextEditingController amountController;

  const ExpenseAmountField({super.key, required this.amountController});

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      hintText: 'Amount',
      controller: amountController,
      keyboardType: TextInputType.number,
      onChanged: (v) => Events.updateAmount(v).publish(context),
    );
  }
}
