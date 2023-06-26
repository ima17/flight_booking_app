import 'package:flutter/material.dart';

import '../configs/palette.dart';
import '../configs/theme_constants.dart';

class LandingScreenTopContainer extends StatelessWidget {
  const LandingScreenTopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/earth.png"),
          fit: BoxFit.contain,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 40,
            right: 0,
            top: MediaQuery.of(context).size.height *
                0.1, // Adjust this value as needed
            child: const Text(
              "Plan Your\njourney",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 36,
                fontFamily: ThemeConstants.font,
                color: Palette.whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            right: 100,
            top: 100,
            child: Image.asset(
              "assets/icons/plane.png",
            ),
          ),
          Positioned(
            left: 220,
            top: 120,
            child: Image.asset(
              "assets/icons/path.png",
            ),
          ),
        ],
      ),
    );
  }
}
