String dateTime2yyyymmdd(DateTime? dateTime) {
  if (dateTime == null) {
    return '';
  } else {
    return "${dateTime.year}/${dateTime.month}/${dateTime.day}";
  }
}
