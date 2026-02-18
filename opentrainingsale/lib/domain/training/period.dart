import 'package:opentrainingsale/domain/training/period_exception.dart';

class Period {
  final DateTime startDate;
  final DateTime endDate;

  const Period._(this.startDate, this.endDate);

  factory Period.from(DateTime startDate, DateTime endDate) {
    final now = DateTime.now();
    if (startDate.isBefore(now)) {
      throw PeriodException.startDateFromPast(startDate);
    }

    if (endDate.isBefore(startDate)) {
      throw PeriodException.endDateBeforeStartDate(startDate, endDate);
    }

    return Period._(startDate, endDate);
  }

  factory Period.between(DateTime startDate, DateTime endDate) =>
      Period.from(startDate, endDate);
}
