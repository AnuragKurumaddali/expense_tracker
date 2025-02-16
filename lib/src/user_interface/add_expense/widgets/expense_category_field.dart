import '../add_expense_page_event.dart';
import '../../_core/design_system/layouts/_imports.dart';
import '../../_core/design_system/widgets/text_fields/primary_text_field.dart';

class ExpenseCategoryField extends StatelessWidget {
  final TextEditingController categoryController;

  const ExpenseCategoryField({super.key, required this.categoryController});

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      hintText: 'Category Name',
      controller: categoryController,
      onChanged: (v) => Events.updateCategory(v).publish(context),
    );
  }
}
