// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'constants.dart';

Province provincefromId(int province_id) {
  for (final element in Province.values) {
    if (element.province_id == province_id) return element;
  }
  return Province.province1;
}

PlatesType platesTypefromId(int plates_type_id) {
  for (final element in PlatesType.values) {
    if (element.plates_type_id == plates_type_id) return element;
  }
  return PlatesType.platesType1;
}

Color textColor(int plates_type_id) {
  return switch (plates_type_id) {
    2 || 7 => const Color(0xff0A6D3F),
    3 || 8 => const Color(0xff045EAA),
    _ => Colors.black,
  };
}

String timeAgoEN(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inSeconds < 60) {
    return '${difference.inSeconds} seconds ago';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} minutes ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} hours ago';
  } else if (difference.inDays < 30) {
    return '${difference.inDays} days ago';
  } else if (difference.inDays < 365) {
    return '${difference.inDays ~/ 30} months ago';
  } else {
    return '${difference.inDays ~/ 365} years ago';
  }
}

String timeAgoTH(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inSeconds < 60) {
    return '${difference.inSeconds} วินาทีที่แล้ว';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} นาทีที่แล้ว';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} ชั่วโมงที่แล้ว';
  } else if (difference.inDays < 30) {
    return '${difference.inDays} วันที่แล้ว';
  } else if (difference.inDays < 365) {
    return '${difference.inDays ~/ 30} เดือนที่แล้ว';
  } else {
    return '${difference.inDays ~/ 365} ปีที่แล้ว';
  }
}
