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

const kNormalTextStyle = TextStyle(
  color: Palette.normalTextColor,
  fontFamily: ThemeConstants.font,
  fontWeight: FontWeight.w500,
  fontSize: 12,
);

const kResultsBigFontStyle = TextStyle(
    color: Palette.accentColor,
    fontFamily: ThemeConstants.font,
    fontWeight: FontWeight.w300,
    fontSize: 30);

const kTripSelectorBigFontStyle = TextStyle(
  color: Palette.darkBlueColor,
  fontFamily: ThemeConstants.font,
  fontWeight: FontWeight.w500,
  fontSize: 40,
);

const kTextButtonStyle = TextStyle(
  color: Palette.subtitleTextColor,
  fontFamily: ThemeConstants.font,
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

const kSelectedTextButtonStyle = TextStyle(
  color: Palette.normalTextColor,
  fontFamily: ThemeConstants.font,
  fontWeight: FontWeight.w500,
  fontSize: 16,
);
