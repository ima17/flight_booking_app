import 'package:flight_booking_app/widgets/date_picker_widget.dart';
import 'package:flight_booking_app/widgets/passenger_luggage_widget.dart';
import 'package:flight_booking_app/widgets/select_class_widget.dart';
import 'package:flutter/material.dart';

import '../configs/palette.dart';
import 'trip_selector_widget.dart';

class LandingScreenBottomContainer extends StatelessWidget {
  const LandingScreenBottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Palette.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            padding: const EdgeInsets.all(35),
            child: const Column(
              children: [
                TripSelectorWidget(),
                SizedBox(
                  height: 40,
                ),
                DatePickerWidget(),
                SizedBox(
                  height: 40,
                ),
                PassengerLuggageWidget(),
                SizedBox(
                  height: 40,
                ),
                SelectClassWidget(),
              ],
            ),
          ),
          const Positioned(
            top: -40.0,
            child: Text("One way"),
          ),
        ],
      ),
    );
  }
}
