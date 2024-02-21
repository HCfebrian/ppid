import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String addBaseUrlImage(String imageId) {
  print("ini log asset");
  print("https://suhu-admin.tlabdemo.com/assets/" + imageId);

  return "https://suhu-admin.tlabdemo.com/assets/" + imageId;
}

double getImageHeightScale(double screenWidth) {
  return screenWidth * 0.5;
}

String getYoutubeThumbnail(String youtubeUrl) {
  final Uri? uri = Uri.tryParse(youtubeUrl);
  if (uri == null) {
    return "null";
  }

  return 'https://img.youtube.com/vi/${uri.queryParameters['v']}/0.jpg';
}

List<int> getPageMax(int dataCount) {
  final int totalPage = (dataCount / 9).ceil();

  List<int> listPage = [];

  for (var i = 0; i < totalPage; i++) {
    listPage.add(i);
  }
  return listPage;
}

String addNumber(
  int number1,
  int number2,
) {
  return (number1 + number2).toString();
}

String subNumber(
  int number1,
  int number2,
) {
  return (number1 + number2).toString();
}

String dateFormat(String dateTimeString) {
  late final DateTime dateTemp;
  try {
    dateTemp = DateTime.parse(dateTimeString);
  } catch (e) {
    print("erroer" + e.toString());
    return dateTimeString;
  }

  final f = new DateFormat('dd MMMM yyyy');
  return f.format(dateTemp);
}
