import 'package:flutter/material.dart';

String dateTime2yyyymmdd(DateTime? dateTime) {
  if (dateTime == null) {
    return '';
  } else {
    return "${dateTime.year}/${dateTime.month}/${dateTime.day}";
  }
}

Widget stars(int? score) {
  const star = Icon(
    Icons.star,
    color: Color.fromRGBO(253, 216, 53, 1),
    size: 15,
  );

  if (score == null) {
    return const Text('-');
  } else {
    return Row(
      children: [for (var i = 1; i <= score; i++) star],
    );
  }
}
