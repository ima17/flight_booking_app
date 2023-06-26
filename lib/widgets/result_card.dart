import 'package:flight_booking_app/configs/theme_constants.dart';
import 'package:flight_booking_app/constants/styles_constants.dart';
import 'package:flight_booking_app/models/flight_data.dart';
import 'package:flutter/material.dart';

import '../configs/palette.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key? key,
    required this.flight,
  }) : super(key: key);

  final Flight? flight;

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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          flight!.startCityCode,
                          style: kResultsBigFontStyle,
                        ),
                        Text(
                          flight!.startCity,
                          style: kNormalTextStyle,
                        ),
                      ],
                    ),
                    Image(image: AssetImage(flight!.imageUrl)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          flight!.endCityCode,
                          style: kResultsBigFontStyle,
                        ),
                        Text(
                          flight!.endCity,
                          style: kNormalTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "DATE",
                          style: kLabelStyle,
                        ),
                        Text(
                          flight!.date,
                          style: kNormalTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                            image: AssetImage("assets/icons/ellipse.png")),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          flight!.time,
                          style: const TextStyle(
                            fontFamily: ThemeConstants.font,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Palette.normalTextColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "FLIGHT NO",
                          style: kLabelStyle,
                        ),
                        Text(
                          flight!.flightNo,
                          style: kNormalTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Palette.rulerColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Ticket Price",
                  style: TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Palette.subtitleTextColor,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(
                  flight!.ticketPrice,
                  style: const TextStyle(
                    fontFamily: ThemeConstants.font,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Palette.normalTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
