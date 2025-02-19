import '../../../_core/design_system/layouts/_imports.dart';
import '../../../_core/design_system/widgets/text_fields/primary_text_field.dart';
import '../../dashboard_page_bloc.dart';

class ExpenseDescriptionField extends StatelessWidget {
  final TextEditingController descriptionController;

  const ExpenseDescriptionField({super.key, required this.descriptionController});

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      hintText: 'Enter Description',
      controller: descriptionController,
      onChanged: (v) => Events.updateDescription(v).publish(context),
      maxLines: 5,
      maxLength: 500,
    );
  }
}
