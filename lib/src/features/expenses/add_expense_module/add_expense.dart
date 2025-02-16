import 'package:framework/framework.dart';
import '../entities/expense_data.dart';
import 'add_expense_command.dart';
import 'add_expense_exception.dart';

class AddExpenseRequest implements UseCaseRequest{
  final ExpenseData expenseData;
  const AddExpenseRequest(this.expenseData);
}

class AddExpenseResponse{
  final AddExpenseRequest addExpenseRequest;
  const AddExpenseResponse(this.addExpenseRequest);
}

class AddExpense extends StreamUseCase<AddExpenseRequest,Task<AddExpenseResponse>>{

  @override
  final AddExpenseRequest request;
  final AddExpenseCommandFactory factory;

  const AddExpense(this.request, this.factory);

  @override
  Stream<Task<AddExpenseResponse>> execute() async*{
    yield const Task.running();
    try{
      final expense = request.expenseData.toExpense();
      await factory.addExpense(expense).execute();
      yield Task.done(AddExpenseResponse(request));
    }catch(error){
      Task.failedFrom(error, const DefaultAddExpenseException());
    }
  }

}