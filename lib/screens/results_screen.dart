import 'dart:convert';
import 'package:flight_booking_app/models/flight_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../configs/palette.dart';
import '../configs/theme_constants.dart';
import '../widgets/result_card.dart';

class ResultScreen extends StatefulWidget {
  static const String id = 'results_screen';

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<Flight> flights = []; // List to store fetched flights

  @override
  void initState() {
    super.initState();
    fetchFlights(); // Fetch flights when the screen initializes
  }

  Future<void> fetchFlights() async {
    final String jsonString =
        await rootBundle.loadString('assets/mock/mockData.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    final List<Flight> fetchedFlights =
        jsonList.map((json) => Flight.fromJson(json)).toList();

    setState(() {
      flights = fetchedFlights;
    });
  }

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
            color: Palette.normalTextColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0, 30.0),
            child: Text(
              "${flights.length} flights available from Melbourne to Colombo",
              style: TextStyle(
                fontSize: 14,
                fontFamily: ThemeConstants.font,
                fontWeight: FontWeight.w500,
                color: Palette.subtitleTextColor,
              ),
            ),
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
              child: SingleChildScrollView(
                child: Column(
                  children: flights.map((flight) => ResultCard(flight: flight)).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
