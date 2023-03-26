import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:weather_app/app/modules/views/weather_app.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
  const MyApp()
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: "Weather App",
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      home: const WeatherApp(),
    
    );
  }
}