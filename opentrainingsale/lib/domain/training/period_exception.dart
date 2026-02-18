class PeriodException implements Exception {
  final DateTime? startDate;
  final DateTime? endDate;

  const PeriodException._({this.startDate, this.endDate});

  static PeriodException startDateFromPast(DateTime startDate) {
    return PeriodException._(startDate: startDate);
  }

  static PeriodException endDateBeforeStartDate(DateTime startDate, DateTime endDate) {
    return PeriodException._(startDate: startDate, endDate: endDate);
  }

  @override
  String toString() {
    if (endDate == null) {
      return 'PeriodException: start date $startDate is in the past';
    }
    return 'PeriodException: end date $endDate is before start date $startDate';
  }
}
