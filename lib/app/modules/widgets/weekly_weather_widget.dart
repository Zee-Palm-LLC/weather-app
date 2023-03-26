// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeeklyWeatherWidget extends StatelessWidget {
  final String weekDay;
  final String icon;
  final String temperature;
  final String rainPossibility;
  const WeeklyWeatherWidget({
    Key? key,
    required this.weekDay,
    required this.icon,
    required this.temperature,
    required this.rainPossibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(weekDay, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 10),
        SvgPicture.asset(icon, height: 30),
        const SizedBox(height: 10),
        Text(temperature, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 5),
        Text(rainPossibility, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
