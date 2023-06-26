import 'package:flight_booking_app/configs/theme_constants.dart';
import 'package:flight_booking_app/constants/styles_constants.dart';
import 'package:flutter/material.dart';

import '../configs/palette.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(30, 30, 30, 15),
      decoration: const BoxDecoration(
        color: Palette.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CGK",
                          style: TextStyle(
                              color: Palette.accentColor,
                              fontFamily: ThemeConstants.font,
                              fontWeight: FontWeight.w300,
                              fontSize: 30),
                        ),
                        Text("Jakarta"),
                      ],
                    ),
                    Image(image: AssetImage("assets/icons/emirates.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "LCY",
                          style: TextStyle(
                              color: Palette.accentColor,
                              fontFamily: ThemeConstants.font,
                              fontWeight: FontWeight.w300,
                              fontSize: 30),
                        ),
                        Text("London"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "DATE",
                          style: kLabelStyle,
                        ),
                        Text("data"),
                      ],
                    ),
                    Column(
                      children: [
                        Image(image: AssetImage("assets/icons/ellipse.png")),
                        Text("1h 35m, 10.35 AM"),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "TIME",
                          style: kLabelStyle,
                        ),
                        Text("data"),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Palette.rulerColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Ticket Price"),
                SizedBox(
                  width: 40,
                ),
                Text("IDR 350,000"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
