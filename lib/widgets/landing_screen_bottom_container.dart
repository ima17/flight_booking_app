import 'package:flutter/material.dart';

import '../configs/palette.dart';
import 'trip_selector_widget.dart';

class LandingScreenBottomContainer extends StatelessWidget {
  const LandingScreenBottomContainer({
    super.key,
  });

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
                SizedBox(height: 30,),
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