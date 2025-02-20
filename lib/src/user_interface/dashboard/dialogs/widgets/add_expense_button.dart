import '../../../_core/design_system/layouts/_imports.dart';
import '../../../_core/design_system/widgets/buttons/planar_button.dart';
import '../../../_core/design_system/widgets/snackbar/custom_snackbar.dart';
import '../../dashboard_page_bloc.dart';

class AddExpenseButton extends StatelessWidget {
  final bool isFormValid;
  final String validationMessage;

  const AddExpenseButton(
      {super.key, required this.isFormValid, required this.validationMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: PlanarButton(
            key: const Key('saveExpenseButton'),
            disabled: !isFormValid,
            label: 'Save Expense',
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              isFormValid
                  ? const Events.addExpense().publish(context)
                  : validationMessage.isNotEmpty
                      ? CustomSnackbar.show(
                          context: context,
                          message: validationMessage,
                          isSuccess: false)
                      : CustomSnackbar.show(
                  context: context,
                  message: "All fields are mandatory!",
                  isSuccess: false);
            }),
      ),
    );
  }
}
