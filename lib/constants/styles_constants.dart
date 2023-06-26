import 'package:flight_booking_app/configs/theme_constants.dart';
import 'package:flight_booking_app/configs/palette.dart';
import 'package:flutter/material.dart';

const kLabelStyle = TextStyle(
  color: Palette.subtitleTextColor,
  fontFamily: ThemeConstants.font,
  fontWeight: FontWeight.w500,
  fontSize: 12,
);

const kBottomContainerDecoration = BoxDecoration(
  color: Palette.whiteColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(40.0),
    topRight: Radius.circular(40.0),
  ),
);
