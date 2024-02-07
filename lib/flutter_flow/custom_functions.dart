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
