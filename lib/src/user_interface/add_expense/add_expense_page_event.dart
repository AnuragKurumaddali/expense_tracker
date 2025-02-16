import 'package:expense_tracker/src/user_interface/add_expense/add_expense_page_bloc.dart';
import '../_event_imports.dart';

part 'add_expense_page_event.freezed.dart';

@Freezed(copyWith: false)
class AddExpensePageEvent with _$AddExpensePageEvent implements UiEvent {
  const factory AddExpensePageEvent.addExpense() = SaveExpenseEvent;
  const factory AddExpensePageEvent.getAllCategories() = GetAllCategories;
  const factory AddExpensePageEvent.updateAmount(String amount) = UpdateAmount;
  const factory AddExpensePageEvent.updateCategory(String category) = UpdateCategory;
  const factory AddExpensePageEvent.updateDescription(String description) = UpdateDescription;
  const factory AddExpensePageEvent.validateExpenseFields() = ValidateExpenseFields;

}

typedef Events = AddExpensePageEvent;

extension EventsExtensions on Events{
  void publish(BuildContext context){
    context.bloc.add(this);
  }
}