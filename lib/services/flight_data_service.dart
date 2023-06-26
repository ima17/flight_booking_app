import 'dart:convert';
import 'package:flight_booking_app/models/flight_data.dart';
import 'package:flutter/services.dart' show rootBundle;
   

   Future<List<Flight>> fetchFlights() async {
     final String jsonString = await rootBundle.loadString('assets/mock/mockData.json');
     final List<dynamic> jsonList = json.decode(jsonString);
     return jsonList.map((json) => Flight.fromJson(json)).toList();
   }
