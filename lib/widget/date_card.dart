import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  DateCard({required this.day, required this.date});
  final String day;
  final int date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffFBF6E7),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [Text(day), Text(date.toString())],
          ),
        ),
      ),
    );
  }
}
