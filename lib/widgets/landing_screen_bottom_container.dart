import 'package:flight_booking_app/widgets/date_picker_widget.dart';
import 'package:flutter/material.dart';

import '../configs/palette.dart';
import 'trip_selector_widget.dart';

class LandingScreenBottomContainer extends StatefulWidget {
  const LandingScreenBottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  _LandingScreenBottomContainerState createState() =>
      _LandingScreenBottomContainerState();
}

class _LandingScreenBottomContainerState
    extends State<LandingScreenBottomContainer> {

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
                  height: 30,
                ),
                DatePickerWidget(),
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


