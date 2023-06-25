import 'package:flight_booking_app/configs/palette.dart';
import 'package:flutter/material.dart';

import '../widgets/landing_screen_bottom_container.dart';
import '../widgets/landing_screen_top_container.dart';

class LandingScreen extends StatefulWidget {
  static const String id = 'landing_screen';
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Palette.themeBlueColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LandingScreenTopContainer(),
          LandingScreenBottomContainer(),
        ],
      ),
    );
  }
}



