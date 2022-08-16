import 'package:flutter/material.dart';
import 'package:weather_app/presentation/home/view/weather_forecast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherForecast(),
    );
  }
}
