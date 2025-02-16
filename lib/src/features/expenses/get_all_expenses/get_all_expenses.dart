import 'package:framework/use_case.dart';
import '../entities/expense.dart';
import 'get_all_expenses_command.dart';
import 'get_all_expenses_exceptions.dart';

class GetAllExpensesRequest implements UseCaseRequest {
  const GetAllExpensesRequest();
}

class GetAllExpensesResponse {
  final List<Expense> lsExpenses;
  final GetAllExpensesRequest request;

  const GetAllExpensesResponse(this.request, this.lsExpenses);
}

class GetAllExpenses implements StreamUseCase<GetAllExpensesRequest, Task<GetAllExpensesResponse>> {
  @override
  final GetAllExpensesRequest request;
  final GetAllExpensesCommandFactory commands;

  const GetAllExpenses(this.request, this.commands);

  @override
  Stream<Task<GetAllExpensesResponse>> execute() async* {
    yield const Task.running();
    try {
      final expenses = await commands.getAllExpenses().execute();
      yield Task.done(GetAllExpensesResponse(request, expenses));
    } catch (error) {
      yield Task.failedFrom(error, const DefaultGetAllExpensesException());
    }
  }
}
