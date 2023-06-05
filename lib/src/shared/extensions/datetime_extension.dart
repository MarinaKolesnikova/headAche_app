extension DateTimeComparable on DateTime {
  bool isTheSameDate(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }
}
