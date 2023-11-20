import 'package:intl/intl.dart';

extension DoubleFormat on double {
  // double value = 1234567.89;
  // var formatter = NumberFormat('#,##0.00');
  // String formattedValue = formatter.format(value);
  // print(formattedValue); // Output: 1,234,567.89
// return NumberFormat('#,##0.00').format(this);

  String toStringFormat() => NumberFormat('#,##0.00').format(this);
}
