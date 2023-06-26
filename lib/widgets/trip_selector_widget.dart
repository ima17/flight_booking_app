import 'package:flight_booking_app/constants/styles_constants.dart';
import 'package:flutter/material.dart';

class TripSelectorWidget extends StatelessWidget {
  const TripSelectorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "FROM",
                style: kLabelStyle,
              ),
              const Text(
                "MLB",
                style: kTripSelectorBigFontStyle,
              ),
              const SizedBox(
                width: 90,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: kNormalTextStyle,
                  decoration: InputDecoration(
                    hintText: "Melbourne",
                    hintStyle: kNormalTextStyle,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 1,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        const Image(image: AssetImage("assets/icons/icon1.png")),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "TO",
                style: kLabelStyle,
              ),
              const Text(
                "CLB",
                style: kTripSelectorBigFontStyle,
              ),
              const SizedBox(
                width: 90,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: kNormalTextStyle,
                  decoration: InputDecoration(
                    hintText: "Colombo",
                    hintStyle: kNormalTextStyle,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 1,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
