import 'package:intl/intl.dart';

class HumanFormat {
  static String humanRedableNumber(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0, 
      symbol: '').format(number);
    return formatterNumber;
  }
}
