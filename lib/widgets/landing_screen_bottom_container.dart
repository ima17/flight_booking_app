import 'package:flight_booking_app/screens/results_screen.dart';
import 'package:flutter/material.dart';

import '../configs/palette.dart';
import 'trip_selector_widget.dart';
import 'date_picker_widget.dart';
import 'passenger_luggage_widget.dart';
import 'select_class_widget.dart';
import 'button_widget.dart';

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
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(35, 35, 35, 0),
              child: Column(
                children: [
                  const TripSelectorWidget(),
                  const SizedBox(height: 40),
                  const DatePickerWidget(),
                  const SizedBox(height: 40),
                  const PassengerLuggageWidget(),
                  const SizedBox(height: 40),
                  const SelectClassWidget(),
                  const SizedBox(height: 40),
                  ButtonWidget(
                    label: 'Search Fights',
                    onPressed: () async {
                      await Navigator.pushNamed(context, ResultScreen.id);
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -40.0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                "One way",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
