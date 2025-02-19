import 'package:intl/intl.dart';

class AppConstants {
  static const String allTab = "All";
  static const String currentYearTab = "Current Year";
  static const String currentMonthTab = "Current Month";
  static const String allKey = "All";
  static const String currentYearKey = "CurrentYear";
  static const String currentMonthKey = "CurrentMonth";

  static String getMonthName(int monthNumber) {
    if (monthNumber < 1 || monthNumber > 12) {
      throw ArgumentError('Month number must be between 1 and 12');
    }

    DateTime date = DateTime(2020, monthNumber);
    return DateFormat.MMMM().format(date);
  }
}