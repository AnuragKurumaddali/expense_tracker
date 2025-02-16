import 'expense.dart';
import 'package:framework/domain.dart';

class ExpenseData extends ValueObject {
  double _amount;
  String _category;
  DateTime _date;
  String _description;

  double get amount => _amount;
  String get category => _category;
  DateTime get date => _date;
  String get description => _description;

  ExpenseData({
    required double amount,
    required String category,
    required DateTime date,
    required String description,
  })  : _amount = amount,
        _category = category,
        _date = date,
        _description = description;

  ExpenseData.empty()
      : this(
    amount: 0.0,
    category: '',
    date: DateTime(2000), // Default empty date
    description: '',
  );

  ExpenseData updateAmount(double amount) {
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

  // Method to create an Expense instance from ExpenseData
  Expense toExpense() {
    return Expense(
      amount: amount,
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
