import 'package:flutter/material.dart';

class WeatherTile extends StatelessWidget {
  IconData icon;
  String weather;
  String weatherStatus;

  WeatherTile(
      {Key? key,
      required this.icon,
      required this.weather,
      required this.weatherStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.purple,
          )
        ],
      ),
      title: Text(
        weather,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        weatherStatus,
        style: const TextStyle(
            fontSize: 15,
            color: Color(0xff9e9e9e),
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
