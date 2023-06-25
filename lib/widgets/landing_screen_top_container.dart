import 'package:flutter/material.dart';

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
      child: const Text("Plan Your Journey"),
    );
  }
}
