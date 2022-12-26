import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../config/constants.dart';
import 'calendar_color.dart';
import 'calendar_date.dart';
import 'calendar_dates_converter.dart';
import 'date_time_converter.dart';

part 'calendar.g.dart';

@JsonSerializable()
@CalendarDatesConverter()
@DateTimeConverter()
class Calendar {
  @JsonKey(includeIfNull: false)
  int? id;

  // Supabase database uses '_' id, so we have to use special annoation
  // when serialize or de-serialize use
  @JsonKey(name: 'user_id')
  String? userID;

  String name;

  @JsonKey(name: 'color', required: true)
  String colorHex;

  @JsonKey(name: 'background_slug', required: true)
  String backgroundSlug; // unique background image

  @JsonKey(name: 'calendar_dates', required: false, includeIfNull: false)
  CalendarDates? dates; // custom type

  // color getter
  CalendarColor? get color => colors.firstWhere((e) => colorHex == e.hex);

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

  // factory helper function for json to string and vice versa conversion
  // $CalendarFromJson will be generated automatically using json serializer
  
  // this will be used when data comes from api as string
  factory Calendar.fromJson(Map<String, dynamic> json) =>
      _$CalendarFromJson(json);

  // this will be used convert data to json from string
  Map<String, dynamic> toJson() => _$CalendarToJson(this);
}
