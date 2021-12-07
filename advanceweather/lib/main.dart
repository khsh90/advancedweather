import 'package:flutter/material.dart';
import './widgets/weather_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatefulWidget {
  WeatherApp({Key? key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Color(0xfff1f1f1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Location',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    '85\u00b0',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Text(
                  'High of 35\u00b0, Low of 20\u00b0 ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff9e9e9e)),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                WeatherTile(
                    icon: Icons.thermostat_outlined,
                    weather: 'Tempretaure',
                    weatherStatus: '85\u00b0'),
                WeatherTile(
                    icon: Icons.cloud_outlined,
                    weather: 'Weather',
                    weatherStatus: 'Cloudy'),
                WeatherTile(
                    icon: Icons.wb_sunny,
                    weather: 'Humidity',
                    weatherStatus: '70\u00b0'),
                WeatherTile(
                    icon: Icons.waves_outlined,
                    weather: 'Wind Speed',
                    weatherStatus: '2MPH')
              ],
            ),
          ))
        ],
      ),
    );
  }
}
