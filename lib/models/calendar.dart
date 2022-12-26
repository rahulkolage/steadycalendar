import 'package:flutter/material.dart';

import 'calendar_color.dart';

class Calendar {
  int? id;

  String? userID;

  String name;

  String colorHex;

  String backgroundSlug; // unique background image

  CalendarDates? dates; // custom type

  // color getter
  CalendarColor? get color => colors.firstWhere((e) => colorHex == e.Hex);

  Calendar(
      {this.id,
      this.userID,
      required this.name,
      required this.colorHex,
      required this.backgroundSlug,
      this.dates});

  // additional helper function
  factory Calendar.blank() {
    return Calendar(
        name: 'Untitled',
        colorHex: colors.first.hex,
        backgroundSlug: 'darts@3x.png');
  }
}
