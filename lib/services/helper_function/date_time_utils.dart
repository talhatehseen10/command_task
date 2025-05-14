/// Utility functions for DateTime handling.
DateTime parseDateTimeOrNow(String? dateTimeStr) {
  if (dateTimeStr == null) return DateTime.now();
  return DateTime.tryParse(dateTimeStr) ?? DateTime.now();
}
