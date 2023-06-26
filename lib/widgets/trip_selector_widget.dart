import 'package:flight_booking_app/configs/theme_constants.dart';
import 'package:flight_booking_app/configs/palette.dart';
import 'package:flight_booking_app/constants/styles_constants.dart';
import 'package:flutter/material.dart';

class TripSelectorWidget extends StatelessWidget {
  const TripSelectorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "FROM",
                style: kLabelStyle,
              ),
              Text(
                "MLB",
                style: TextStyle(
                  color: Palette.darkBlueColor,
                  fontFamily: ThemeConstants.font,
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                width: 90,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: kNormalTextStyle,
                  decoration: InputDecoration(
                    hintText: "Melbourne",
                    hintStyle: kNormalTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        Image(image: AssetImage("assets/icons/icon1.png")),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "TO",
                style: kLabelStyle,
              ),
              Text(
                "CLB",
                style: TextStyle(
                  color: Palette.darkBlueColor,
                  fontFamily: ThemeConstants.font,
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                width: 90,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: kNormalTextStyle,
                  decoration: InputDecoration(
                    hintText: "Colombo",
                    hintStyle: kNormalTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
