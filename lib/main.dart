import 'package:flight_booking_app/configs/palette.dart';
import 'package:flight_booking_app/screens/landing_screen.dart';
import 'package:flight_booking_app/screens/results_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Palette.accentColor),
        useMaterial3: true,
      ),
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => const LandingScreen(),
        ResultScreen.id: (context) => const ResultScreen(),
      },
    );
  }
}
