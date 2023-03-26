import 'package:flutter/material.dart';
import 'package:weather_app/app/modules/widgets/weekly_weather_widget.dart';

class WeatherDaysCard extends StatelessWidget {
  const WeatherDaysCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        WeeklyWeatherWidget(
                          weekDay: 'Mon',
                          icon: 'assets/sun.svg',
                          temperature: '26° / 28°',
                          rainPossibility: '54% Rain',
                        ),
                        WeeklyWeatherWidget(
                          weekDay: 'Tues',
                          icon: 'assets/sun.svg',
                          temperature: '20° / 22°',
                          rainPossibility: '54% Rain',
                        ),
                        WeeklyWeatherWidget(
                          weekDay: 'Wed',
                          icon: 'assets/sun.svg',
                          temperature: '26° / 28°',
                          rainPossibility: '34% Rain',
                        ),
                        WeeklyWeatherWidget(
                          weekDay: 'Mon',
                          icon: 'assets/sun.svg',
                          temperature: '26° / 28°',
                          rainPossibility: '54% Rain',
                        ),
                      ],
                    ),
                  )
                 ;
  }
}