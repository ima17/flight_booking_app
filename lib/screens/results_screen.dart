import 'package:flight_booking_app/configs/palette.dart';
import 'package:flight_booking_app/configs/theme_constants.dart';
import 'package:flutter/material.dart';

import '../widgets/result_card.dart';

class ResultScreen extends StatefulWidget {
  static const String id = 'results_screen';
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flights",
          style: TextStyle(
              fontSize: 24,
              fontFamily: ThemeConstants.font,
              fontWeight: FontWeight.w500,
              color: Palette.normalTextColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 30.0),
            child: Text("4 flights available from Melbourne to Colombo"),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Palette.accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: const Column(
                children: [
                  ResultCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
