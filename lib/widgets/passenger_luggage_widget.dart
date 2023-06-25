import 'package:flutter/material.dart';

import '../constants/styles_constants.dart';

class PassengerLuggageWidget extends StatelessWidget {
  const PassengerLuggageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "PASSENGER & LUGGAGE",
            style: kLabelStyle,
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "SEATS",
                    prefixIcon:
                        Icon(Icons.airline_seat_recline_normal),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "KG",
                    prefixIcon:
                        Icon(Icons.airline_seat_recline_normal),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}