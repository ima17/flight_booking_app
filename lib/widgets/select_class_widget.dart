import 'package:flight_booking_app/configs/palette.dart';
import 'package:flutter/material.dart';

import '../constants/styles_constants.dart';

class SelectClassWidget extends StatelessWidget {
  const SelectClassWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "CLASS",
          style: kLabelStyle,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Economy",
                style: kSelectedTextButtonStyle,
              ),
            ),
            const SizedBox(width: 15),
            Container(
              width: 1,
              height: 15,
              color: Palette.subtitleTextColor,
            ),
            const SizedBox(width: 30),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Business",
                style: kTextButtonStyle,
              ),
            ),
            const SizedBox(width: 15),
            Container(
              width: 1,
              height: 15,
              color: Palette.subtitleTextColor,
            ),
            const SizedBox(width: 30),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "First Class",
                style: kTextButtonStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
