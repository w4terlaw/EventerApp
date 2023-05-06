import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class MyDateFormat {
  static const String compactCardDateFormat = 'd MMM • EEE • HH:mm';
  static const String middleCardDateFormat = 'EEE, d MMM • HH:mm';
  static const String largeCardDateFormat = 'EEE, MMM d • HH:mm';
  static const String tabsDateFormat = 'dd MMMM, y';
  static const String weekDayDateFormat = 'EEEE';
  static const String timeFormat = 'HH:mma';

  static String dateTimeFormat(DateTime dateTime, String format) {
    initializeDateFormatting('ru', null);
    final formatter = DateFormat(format, 'ru').format(dateTime);
    return formatter;
  }
}
