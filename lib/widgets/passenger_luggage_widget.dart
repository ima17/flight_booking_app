import 'package:flutter/material.dart';

import '../configs/palette.dart';
import '../constants/styles_constants.dart';

class PassengerLuggageWidget extends StatelessWidget {
  const PassengerLuggageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "PASSENGER & LUGGAGE",
          style: kLabelStyle,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "SEATS",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.group,
                              color: Palette.subtitleTextColor)),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 1,
                    color: Palette.greyColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 90,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "KG",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.luggage,
                            color: Palette.subtitleTextColor),
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 1,
                    color: Palette.greyColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
