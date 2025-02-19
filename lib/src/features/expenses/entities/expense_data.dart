import 'expense.dart';
import 'package:framework/domain.dart';

class ExpenseData extends ValueObject {
  String _amount;
  String _category;
  DateTime _date;
  String _description;

  String get amount => _amount;
  String get category => _category;
  DateTime get date => _date;
  String get description => _description;

  ExpenseData({
    required String amount,
    required String category,
    required DateTime date,
    required String description,
  })  : _amount = amount,
        _category = category,
        _date = date,
        _description = description;

  ExpenseData.empty()
      : this(
    amount: '',
    category: '',
    date: DateTime(2000), // Default empty date
    description: '',
  );

  ExpenseData updateAmount(String amount) {
    _amount = amount;
    return this;
  }

  ExpenseData updateCategory(String category) {
    _category = category;
    return this;
  }

  ExpenseData updateDate(DateTime date) {
    _date = date;
    return this;
  }

  ExpenseData updateDescription(String description) {
    _description = description;
    return this;
  }

  Expense toExpense() {
    return Expense(
      amount: double.tryParse(amount)??0.0,
      category: category,
      date: date,
      description: description,
    );
  }

  @override
  String toString() {
    return 'ExpenseData(amount: $amount, category: $category, date: $date, description: $description)';
  }
}
