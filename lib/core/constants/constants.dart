import 'package:intl/intl.dart';

class Constants {
  static final minDate = DateTime(1960);

  static DateTime get maxDate {
    final now = DateTime.now();
    return DateTime(now.year, 12, 31);
  }

  static DateTime initialDateTime = DateTime(2000);

  static final dayMonthYearFormat = DateFormat("dd/MM/yyyy");
  
}