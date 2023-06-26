import 'package:flight_booking_app/configs/palette.dart';
import 'package:flutter/material.dart';

import '../configs/theme_constants.dart';
import '../constants/styles_constants.dart';

class CalenderWidget extends StatefulWidget {
  final String label;
  const CalenderWidget({Key? key, required this.label}) : super(key: key);

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: widget.label == "DEPART"
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        Text(
          widget.label,
          style: kLabelStyle,
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            _showDatePicker(context);
          },
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: Palette.subtitleTextColor,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    selectedDate != null
                        ? formatDate(selectedDate!)
                        : "DD/MM/YY",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: ThemeConstants.font,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 90,
                height: 1,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }

  String formatDate(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year.toString().substring(2)}";
  }

  void _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    ).then((selectedDate) {
      if (selectedDate != null) {
        setState(() {
          this.selectedDate = selectedDate;
        });
      }
    });
  }
}
