import 'package:flutter/material.dart';

import '../widgets/weather_days_card.dart';
import '../widgets/weather_detail_card.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
 List<String> weathers = [
  'assets/sunny.jpg',
  'assets/cloudy.jpeg'
 ];
  List<String> icons = [
  'assets/sunny_color.svg',
  'assets/cloudy.svg'
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
          itemCount: weathers.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(weathers[index]),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          children:  [
                          const   SizedBox(height: 80),
                            const Center(
                                child: Text('19 : 45',
                                    style: TextStyle(
                                      fontSize: 35,
                                    ))),
                           const  SizedBox(height: 10),
                            const Center(
                                child: Text('Thursday | Sep 21',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ))),
                           const  SizedBox(height: 50),
                            const WeatherDaysCard(),
                            const SizedBox(height: 20),
                            WeatherDetailCard(index: index),
                          ]),
                    ),
                  ],
                ),
              );
            }));
  }
}
