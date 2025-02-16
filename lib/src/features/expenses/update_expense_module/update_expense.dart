import 'package:framework/use_case.dart';
import '../entities/expense_data.dart';
import 'update_expense_exception.dart';

sealed class UpdateExpenseRequest implements UseCaseRequest {
  ExpenseData get expenseData;

  const factory UpdateExpenseRequest.amount(String amount, ExpenseData expenseData) = UpdateExpenseAmount;
  const factory UpdateExpenseRequest.category(String category, ExpenseData expenseData) = UpdateExpenseCategory;
  const factory UpdateExpenseRequest.description(String description, ExpenseData expenseData) = UpdateExpenseDescription;
}

class UpdateExpenseResponse {
  final UpdateExpenseRequest request;
  final ExpenseData expenseData;

  const UpdateExpenseResponse(this.request, this.expenseData);
}

class UpdateExpenseAmount implements UpdateExpenseRequest{
  @override
  final ExpenseData expenseData;
  final String amount;
  const UpdateExpenseAmount(this.amount, this.expenseData);
}

class UpdateExpenseCategory implements UpdateExpenseRequest{
  @override
  final ExpenseData expenseData;
  final String category;
  const UpdateExpenseCategory(this.category, this.expenseData);
}

class UpdateExpenseDescription implements UpdateExpenseRequest{
  @override
  final ExpenseData expenseData;
  final String description;
  const UpdateExpenseDescription(this.description, this.expenseData);
}

class UpdateExpenses implements SyncUseCase<UpdateExpenseRequest, Task<UpdateExpenseResponse>> {
  @override
  final UpdateExpenseRequest request;

  const UpdateExpenses(this.request);

  @override
  Task<UpdateExpenseResponse> execute() {
    try{
      final updateForm = switch(request){
        (final UpdateExpenseAmount r) => r.expenseData.updateAmount(double.tryParse(r.amount)??0.0),
        (final UpdateExpenseCategory r) => r.expenseData.updateCategory(r.category),
        (final UpdateExpenseDescription r) => r.expenseData.updateDescription(r.description),
      };
      return Task.done(UpdateExpenseResponse(request, updateForm));
    }catch(error){
      return Task.failedFrom(error, const DefaultUpdateExpenseException());
    }
  }
}
