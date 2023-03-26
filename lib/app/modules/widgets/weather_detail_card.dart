import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherDetailCard extends StatelessWidget {
  final int index;
  List<String> icons = [
  'assets/sunny_color.svg',
  'assets/cloudy.svg'
 ];
 WeatherDetailCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return  Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.09),
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('London, UK'),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              )
                            ],
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("24°", style: TextStyle(fontSize: 40)),                                  
                                  Text("Sunny", style: TextStyle(fontSize: 14)),
                                  SizedBox(height: 5),
                                  Text("Chance of rain 7%", style: TextStyle(fontSize: 12)),
                                  SizedBox(height: 5),
                                  Text("Humidity 45%", style: TextStyle(fontSize: 12)),
                                ],
                              ),
                              SvgPicture.asset(icons[index],height: 100,)
                            ],
                          )
                        ],
                      ));
  }
}