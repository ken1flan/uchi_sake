import 'package:flutter/material.dart';

String dateTime2yyyymmdd(DateTime? dateTime) {
  if (dateTime == null) {
    return '';
  } else {
    return "${dateTime.year}/${dateTime.month}/${dateTime.day}";
  }
}

Row stars(int? score) {
  const star = Icon(
    Icons.star,
    color: Colors.amber,
    size: 15,
  );

  score ??= 0;

  return Row(
    children: [for (var i = 1; i <= score; i++) star],
  );
}
